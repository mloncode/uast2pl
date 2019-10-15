package uast2pl

import (
	"fmt"
	"io"
	"strconv"
	"strings"

	"github.com/bblfsh/sdk/v3/uast"
	"github.com/bblfsh/sdk/v3/uast/nodes"
	"github.com/bblfsh/sdk/v3/uast/role"
)

// WriteNode writes bblfsh node(s) as prolog terms and predicates.
func WriteNode(w io.Writer, n ...nodes.Node) (err error) {
	pl := &uast2pl{
		w:            w,
		valuesMap:    make(map[string]int),
		startEndsMap: make(map[uast.Position]int),
		rolesMap:     make(map[role.Role]int),
	}

	for _, ni := range n {
		if _, err = pl.writeNode(ni); err != nil {
			return err
		}
	}

	err = pl.writeDeclaration(err, "value", "Val", pl.values)
	err = pl.writeDeclaration(err, "array", "[Arguments]", pl.arrays)
	err = pl.writeDeclaration(err, "object", "Obj", pl.objects)
	err = pl.writeDeclaration(err, "role", "Name", pl.roles)
	err = pl.writeDeclaration(err, "position", "[Type, Col, Line, Offset]", pl.startEnds)
	err = pl.writeDeclaration(err, "positions", "[Type, Start, End]", pl.positions)
	err = pl.writeDeclaration(err, "identifier", "[Type, Name, Pos, [Roles]]", pl.identifiers)
	err = pl.writeDeclaration(err, "qualified_identifier", "[Type, [Names], Pos]", pl.qualifiedIdentifiers)
	err = pl.writeDeclaration(err, "comment", "[Type, Prefix, Suffix, Tab, Text, Block, Pos]", pl.comments)
	err = pl.writeDeclaration(err, "group", "[Type, [Nodes], Pos]", pl.groups)
	err = pl.writeDeclaration(err, "function_group", "[Type, [Nodes], Pos]", pl.functionGroups)
	err = pl.writeDeclaration(err, "block", "[Type, [Statements], Pos]", pl.blocks)
	err = pl.writeDeclaration(err, "alias", "[Type, Name, Node, Pos]", pl.aliases)
	err = pl.writeDeclaration(err, "import", "[Type, Path, Pos]", pl.imports)
	err = pl.writeDeclaration(err, "runtime_import", "[Type, Path, Pos]", pl.runtimeImports)
	err = pl.writeDeclaration(err, "runtime_reimport", "[Type, Path, Pos]", pl.runtimeReImports)
	err = pl.writeDeclaration(err, "inline_import", "[Type, Path, Pos]", pl.inlineImports)
	err = pl.writeDeclaration(err, "argument", "[Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]", pl.arguments)
	err = pl.writeDeclaration(err, "function_type", "[Type, [Arguments], [Returns], Pos]", pl.functionTypes)
	err = pl.writeDeclaration(err, "function", "[Type, FuncType, Body, Pos]", pl.functions)

	return err
}

const (
	uastPosition            = uast.NS + ":Position"
	uastPositions           = uast.NS + ":Positions"
	uastIdentifier          = uast.NS + ":Identifier"
	uastQualifiedIdentifier = uast.NS + ":QualifiedIdentifier"
	uastImport              = uast.NS + ":Import"
	uastRuntimeImport       = uast.NS + ":RuntimeImport"
	uastRuntimeReImport     = uast.NS + ":RuntimeReImport"
	uastInlineImport        = uast.NS + ":InlineImport"
	uastAlias               = uast.NS + ":Alias"
	uastComment             = uast.NS + ":Comment"
	uastGroup               = uast.NS + ":Group"
	uastFunctionGroup       = uast.NS + ":FunctionGroup"
	uastBlock               = uast.NS + ":Block"
	uastArgument            = uast.NS + ":Argument"
	uastFunctionType        = uast.NS + ":FunctionType"
	uastFunction            = uast.NS + ":Function"
)

type uast2pl struct {
	w io.Writer

	arrays  []string
	objects []string

	valuesMap            map[string]int
	values               []string
	startEndsMap         map[uast.Position]int
	startEnds            []string
	positions            []string
	identifiers          []string
	qualifiedIdentifiers []string
	rolesMap             map[role.Role]int
	roles                []string
	imports              []string
	runtimeImports       []string
	runtimeReImports     []string
	inlineImports        []string
	aliases              []string
	comments             []string
	groups               []string
	functionGroups       []string
	blocks               []string
	arguments            []string
	functionTypes        []string
	functions            []string
}

// writeNode writes bblfsh Node as prolog predicates.
func (pl *uast2pl) writeNode(n nodes.Node) (string, error) {
	switch n := n.(type) {
	case nodes.Value:
		return pl.writeValue(n)

	case nodes.Array:
		return pl.writeArray(n)

	case nodes.Object:
		return pl.writeObject(n)
	}
	return "_", nil
}

func (pl *uast2pl) writeValue(val nodes.Value) (string, error) {
	v := nodes.ToString(val)
	i, ok := pl.valuesMap[v]
	if ok {
		return pl.values[i], nil
	}

	quote := ""
	if val.Kind() == nodes.KindString {
		quote = "'"
		v = strings.TrimSpace(v)
	}

	i = len(pl.values)
	fn := fmt.Sprintf("value%d", i)
	if _, err := fmt.Fprintf(pl.w, "%s(%s%s%s).\n", fn, quote, v, quote); err != nil {
		return "_", err
	}

	pl.values = append(pl.values, fn)
	pl.valuesMap[v] = i
	return fn, nil
}

func (pl *uast2pl) writeArray(arr nodes.Array) (string, error) {
	format := "%s([Arguments])"
	var (
		args []string
		vars []string
	)
	for _, n := range arr {
		a, err := pl.writeNode(n)
		if err != nil {
			return "_", err
		}
		if a != "_" {
			v := fmt.Sprintf("Arg%d", len(vars))
			vars = append(vars, v)
			args = append(args, fmt.Sprintf("%s(%s)", a, v))
		}
	}

	format = strings.Replace(format, "Arguments", strings.Join(vars, ","), 1)
	if len(vars) > 0 {
		format += " :- " + strings.Join(args, ",")
	}

	fn := fmt.Sprintf("array%d", len(pl.arrays))
	_, err := fmt.Fprintf(pl.w, format+".\n", fn)
	if err != nil {
		return "_", err
	}
	pl.arrays = append(pl.arrays, fn)
	return fn, nil
}

func (pl *uast2pl) writeObject(obj nodes.Object) (string, error) {
	switch uast.TypeOf(obj) {
	case uastPosition:
		var p uast.Position
		if err := uast.NodeAs(obj, &p); err != nil {
			return "_", err
		}
		return pl.writePosition(p)

	case uastPositions:
		var p uast.Positions
		if err := uast.NodeAs(obj, &p); err != nil {
			return "_", err
		}
		return pl.writePositions(p)

	case uastIdentifier:
		var i uast.Identifier
		if err := uast.NodeAs(obj, &i); err != nil {
			return "_", err
		}
		return pl.writeIdentifier(i)

	case uastQualifiedIdentifier:
		var i uast.QualifiedIdentifier
		if err := uast.NodeAs(obj, &i); err != nil {
			return "_", err
		}
		return pl.writeQualifiedIdentifier(i)

	case uastComment:
		var c uast.Comment
		if err := uast.NodeAs(obj, &c); err != nil {
			return "_", err
		}
		return pl.writeComment(c)

	case uastGroup:
		var g uast.Group
		if err := uast.NodeAs(obj, &g); err != nil {
			return "_", err
		}
		return pl.writeGroup(g)

	case uastFunctionGroup:
		var g uast.FunctionGroup
		if err := uast.NodeAs(obj, &g); err != nil {
			return "_", err
		}
		return pl.writeFunctionGroup(g)

	case uastBlock:
		var b uast.Block
		if err := uast.NodeAs(obj, &b); err != nil {
			return "_", err
		}
		return pl.writeBlock(b)

	case uastAlias:
		var a uast.Alias
		if err := uast.NodeAs(obj, &a); err != nil {
			return "_", err
		}
		return pl.writeAlias(a)

	case uastImport:
		var i uast.Import
		if err := uast.NodeAs(obj, &i); err != nil {
			return "_", err
		}
		return pl.writeImport(i)

	case uastRuntimeImport:
		var i uast.RuntimeImport
		if err := uast.NodeAs(obj, &i); err != nil {
			return "_", err
		}
		return pl.writeRuntimeImport(i)

	case uastRuntimeReImport:
		var i uast.RuntimeReImport
		if err := uast.NodeAs(obj, &i); err != nil {
			return "_", err
		}
		return pl.writeRuntimeReImport(i)

	case uastInlineImport:
		var i uast.InlineImport
		if err := uast.NodeAs(obj, &i); err != nil {
			return "_", err
		}
		return pl.writeInlineImport(i)

	case uastArgument:
		var a uast.Argument
		if err := uast.NodeAs(obj, &a); err != nil {
			return "_", err
		}
		return pl.writeArgument(a)

	case uastFunctionType:
		var f uast.FunctionType
		if err := uast.NodeAs(obj, &f); err != nil {
			return "_", err
		}
		return pl.writeFunctionType(f)

	case uastFunction:
		var f uast.Function
		if err := uast.NodeAs(obj, &f); err != nil {
			return "_", err
		}
		return pl.writeFunction(f)

	default:
		format := "%s(Obj)"
		var objects []string
		for _, n := range obj {
			o, err := pl.writeNode(n)
			if err != nil {
				return "_", err
			}
			if o != "_" {
				objects = append(objects, fmt.Sprintf("%s(Obj)", o))
			}
		}
		if len(objects) == 0 {
			format = strings.Replace(format, "Obj", "_", 1)
		} else {
			format += " :- !," + strings.Join(objects, ";")
		}

		fn := fmt.Sprintf("object%d", len(pl.objects))
		_, err := fmt.Fprintf(pl.w, format+".\n", fn)
		if err != nil {
			return "_", err
		}
		pl.objects = append(pl.objects, fn)
		return fn, nil
	}
}

// writePosition writes uast Position as prolog term:
// position(['uast:Position', Col, Line, Offset]).
func (pl *uast2pl) writePosition(p uast.Position) (string, error) {
	i, ok := pl.startEndsMap[p]
	if ok {
		return pl.startEnds[i], nil
	}

	format := "%s(['%s', %s, %s, %s]).\n"
	col := "_"
	line := "_"
	offset := "_"

	if p.HasLineCol() {
		col = fmt.Sprintf("%d", p.Col)
		line = fmt.Sprintf("%d", p.Line)
	}
	if p.HasOffset() {
		offset = fmt.Sprintf("%d", p.Offset)
	}

	i = len(pl.startEnds)
	fn := fmt.Sprintf("position%d", i)
	if _, err := fmt.Fprintf(pl.w, format, fn, uastPosition, col, line, offset); err != nil {
		return "_", err
	}

	pl.startEnds = append(pl.startEnds, fn)
	pl.startEndsMap[p] = i
	return fn, nil
}

// writePositions writes uast Positions as prolog predicate:
// positions(['uast:Positions', Start, End]) :- position(Start), position(End).
func (pl *uast2pl) writePositions(p uast.Positions) (string, error) {
	var err error

	format := "%s(['%s', Start, End])"
	start := "_"
	end := "_"

	p1 := p.Start()
	if p1 != nil {
		start, err = pl.writePosition(*p1)
		if err != nil {
			return "_", err
		}
	}
	if start == "_" {
		format = strings.Replace(format, "Start", "_", 1)
	} else {
		start = fmt.Sprintf("%s(Start)", start)
	}

	p2 := p.End()
	if p2 != nil {
		end, err = pl.writePosition(*p2)
		if err != nil {
			return "_", err
		}
	}
	if end == "_" {
		format = strings.Replace(format, "End", "_", 1)
	} else {
		end = fmt.Sprintf("%s(End)", end)
	}

	if start != "_" || end != "_" {
		format += " :- "
		if start != "_" {
			format += start
			if end != "_" {
				format += ", "
			}
		}

		if end != "_" {
			format += end
		}
	}

	fn := fmt.Sprintf("positions%d", len(pl.positions))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastPositions); err != nil {
		return "_", err
	}

	pl.positions = append(pl.positions, fn)
	return fn, nil
}

// writeRole writes uast Role as prolog term:
// role('Name').
func (pl *uast2pl) writeRole(r role.Role) (string, error) {
	i, ok := pl.rolesMap[r]
	if ok {
		return pl.roles[i], nil
	}

	i = len(pl.roles)
	fn := fmt.Sprintf("role%d", i)
	if _, err := fmt.Fprintf(pl.w, "%s('%s').\n", fn, r.String()); err != nil {
		return "_", err
	}

	pl.roles = append(pl.roles, fn)
	pl.rolesMap[r] = i
	return fn, nil
}

// writeIdentifier writes uast Identifier as prolog predicate:
// identifier(['uast:Identifier', 'Name', Pos, [Role0, ..., RoleN]) :- positions(Pos), role0(Role0), ..., roleN(RoleN).
func (pl *uast2pl) writeIdentifier(i uast.Identifier) (string, error) {
	format := "%s(['%s', '%s', Pos, [Roles]])"

	pos, err := pl.writePositions(i.Positions)
	if err != nil {
		return "", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	var (
		roles []string
		vars  []string
	)
	for _, r := range i.Roles() {
		role, err := pl.writeRole(r)
		if err != nil {
			return "_", err
		}
		if role != "_" {
			v := fmt.Sprintf("Role%d", len(vars))
			vars = append(vars, v)
			roles = append(roles, fmt.Sprintf("%s(%s)", role, v))
		}
	}
	format = strings.Replace(format, "Roles", strings.Join(vars, ","), 1)

	nroles := len(roles)
	if pos != "_" || nroles > 0 {
		format += " :- "
		if pos != "_" {
			format += pos
			if nroles > 0 {
				format += ","
			}
		}

		if nroles > 0 {
			format += strings.Join(roles, ",")
		}
	}

	fn := fmt.Sprintf("identifier%d", len(pl.identifiers))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastIdentifier, i.Name); err != nil {
		return "_", err
	}

	pl.identifiers = append(pl.identifiers, fn)
	return fn, nil

}

// writeQualifiedIdentifier writes  uast QualifiedIdentifier as prolog predicate:
// qualified_identifier(['uast:QualifiedIdentifier', [Name0, ..., NameN], Pos]) :- positions(Pos), identifier0(Name0), ..., identifierN(NameN).
func (pl *uast2pl) writeQualifiedIdentifier(i uast.QualifiedIdentifier) (string, error) {
	format := "%s(['%s', [Names], Pos])"

	pos, err := pl.writePositions(i.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	var (
		names []string
		vars  []string
	)
	for _, id := range i.Names {
		name, err := pl.writeIdentifier(id)
		if err != nil {
			return "_", err
		}
		if name != "_" {
			v := fmt.Sprintf("Name%d", len(vars))
			vars = append(vars, v)
			names = append(names, fmt.Sprintf("%s(%s)", name, v))
		}
	}
	format = strings.Replace(format, "Names", strings.Join(vars, ","), 1)

	nnames := len(names)
	if nnames > 0 || pos != "_" {
		format += " :- "
		if pos != "_" {
			format += pos
			if nnames > 0 {
				format += ","
			}
		}

		if nnames > 0 {
			format += strings.Join(names, ",")
		}
	}

	fn := fmt.Sprintf("qualified_identifier%d", len(pl.qualifiedIdentifiers))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastQualifiedIdentifier); err != nil {
		return "_", err
	}

	pl.qualifiedIdentifiers = append(pl.qualifiedIdentifiers, fn)
	return fn, nil
}

// writeComment writes  uast Comment as prolog predicate:
// comment(['uast:Comment', 'Prefix', 'Suffix', 'Tab', 'Text', Block, Pos]) :- positions(Pos).
func (pl *uast2pl) writeComment(c uast.Comment) (string, error) {
	format := "%s(['%s', '%s', '%s', '%s', '%s', %s, Pos])"

	pos, err := pl.writePositions(c.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		format += fmt.Sprintf(" :- %s(Pos)", pos)
	}

	fn := fmt.Sprintf("comment%d", len(pl.comments))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastComment, c.Prefix, c.Suffix, c.Tab, c.Text, strconv.FormatBool(c.Block)); err != nil {
		return "_", err
	}

	pl.comments = append(pl.comments, fn)
	return fn, nil
}

// writeGroup writes  uast Group as prolog predicate:
// group(['uast:Group', [Node0, ..., NodeN], Pos]) :- positions(Pos), predicate0(Node0), ..., predicateN(NodeN).
func (pl *uast2pl) writeGroup(g uast.Group) (string, error) {
	format := "%s(['%s', [Nodes], Pos])"

	pos, err := pl.writePositions(g.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	var (
		names []string
		vars  []string
	)
	for _, any := range g.Nodes {
		if node, ok := any.(nodes.Node); ok {
			name, err := pl.writeNode(node)
			if err != nil {
				return "_", err
			}
			if name != "_" {
				v := fmt.Sprintf("Node%d", len(vars))
				vars = append(vars, v)
				names = append(names, fmt.Sprintf("%s(%s)", name, v))
			}
		}
	}
	format = strings.Replace(format, "Nodes", strings.Join(vars, ","), 1)

	nnames := len(names)
	if nnames > 0 || pos != "_" {
		format += " :- "
		if pos != "_" {
			format += pos
			if nnames > 0 {
				format += ","
			}
		}

		if nnames > 0 {
			format += strings.Join(names, ",")
		}
	}

	fn := fmt.Sprintf("group%d", len(pl.groups))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastGroup); err != nil {
		return "_", err
	}

	pl.groups = append(pl.groups, fn)
	return fn, nil
}

// writeFunctionGroup writes  uast FunctionGroup as prolog predicate:
// function_group(['uast:FunctionGroup', [Node0, ..., NodeN], Pos]) :- positions(Pos), predicate0(Node0), ..., predicateN(NodeN).
func (pl *uast2pl) writeFunctionGroup(g uast.FunctionGroup) (string, error) {
	format := "%s(['%s', [Nodes], Pos])"

	pos, err := pl.writePositions(g.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	var (
		names []string
		vars  []string
	)
	for _, any := range g.Nodes {
		name := "_"
		if alias, ok := any.(uast.Alias); ok {
			name, err = pl.writeAlias(alias)
		} else {
			if node, ok := any.(nodes.Node); ok {
				name, err = pl.writeNode(node)
			}
		}

		if err != nil {
			return "_", err
		}
		if name != "_" {
			v := fmt.Sprintf("Node%d", len(vars))
			vars = append(vars, v)
			names = append(names, fmt.Sprintf("%s(%s)", name, v))
		}
	}
	format = strings.Replace(format, "Nodes", strings.Join(vars, ","), 1)

	nnames := len(names)
	if nnames > 0 || pos != "_" {
		format += " :- "
		if pos != "_" {
			format += pos
			if nnames > 0 {
				format += ","
			}
		}

		if nnames > 0 {
			format += strings.Join(names, ",")
		}
	}

	fn := fmt.Sprintf("function_group%d", len(pl.functionGroups))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastFunctionGroup); err != nil {
		return "_", err
	}

	pl.functionGroups = append(pl.functionGroups, fn)
	return fn, nil
}

// writeBlock writes  uast Block as prolog predicate:
// block(['uast:Block', [Stmt0, ..., StmtN], Pos]) :- positions(Pos), statement0(Stmt0), ..., statementN(StmtN)
func (pl *uast2pl) writeBlock(b uast.Block) (string, error) {
	format := "%s(['%s', [Stmts], Pos])"

	pos, err := pl.writePositions(b.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	var (
		stmts []string
		vars  []string
	)
	for _, any := range b.Statements {
		if node, ok := any.(nodes.Node); ok {
			s, err := pl.writeNode(node)
			if err != nil {
				return "_", err
			}
			if s != "_" {
				v := fmt.Sprintf("Stmt%d", len(vars))
				vars = append(vars, v)
				stmts = append(stmts, fmt.Sprintf("%s(%s)", s, v))
			}
		}
	}
	format = strings.Replace(format, "Stmts", strings.Join(vars, ","), 1)

	nstmts := len(stmts)
	if nstmts > 0 || pos != "_" {
		format += " :- "
		if pos != "_" {
			format += pos
			if nstmts > 0 {
				format += ","
			}
		}

		if nstmts > 0 {
			format += strings.Join(stmts, ",")
		}
	}

	fn := fmt.Sprintf("block%d", len(pl.blocks))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastBlock); err != nil {
		return "_", err
	}

	pl.blocks = append(pl.blocks, fn)
	return fn, nil
}

// writeAlias writes  uast Alias as prolog predicate:
// alias(['uast:Alias', Name, Node, Pos]) :- identifier(Name), positions(Pos).
func (pl *uast2pl) writeAlias(a uast.Alias) (string, error) {
	format := "%s(['%s', Name, Node, Pos])"

	pos, err := pl.writePositions(a.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	node := "_"
	if n, ok := a.Node.(nodes.Node); ok {
		if node, err = pl.writeNode(n); err != nil {
			return "_", err
		}
	}
	if node == "_" {
		format = strings.Replace(format, "Node", "_", 1)
	} else {
		node = fmt.Sprintf("%s(Node)", node)
	}

	name, err := pl.writeIdentifier(a.Name)
	if err != nil {
		return "_", err
	}
	if name == "_" {
		format = strings.Replace(format, "Name", "_", 1)
	} else {
		name = fmt.Sprintf("%s(Name)", name)
	}

	if name != "_" || node != "_" || pos != "_" {
		format += " :- "

		if name != "_" {
			format += name
			if node != "_" || pos != "_" {
				format += ","
			}
		}

		if node != "_" {
			format += node
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("alias%d", len(pl.aliases))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastAlias); err != nil {
		return "_", err
	}

	pl.aliases = append(pl.aliases, fn)
	return fn, nil

}

// writeImport writes  uast Import as prolog predicate:
// import(['uast:Import', Path, Pos]) :- positions(Pos), path(Path)
func (pl *uast2pl) writeImport(i uast.Import) (string, error) {
	format := "%s(['%s', Path, Pos])"

	pos, err := pl.writePositions(i.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	path := "_"
	if node, ok := i.Path.(nodes.Node); ok {
		path, err = pl.writeNode(node)
	}
	if path == "_" {
		format = strings.Replace(format, "Path", "_", 1)
	} else {
		path = fmt.Sprintf("%s(Path)", path)
	}

	if pos != "_" || path != "_" {
		format += " :- "
		if path != "_" {
			format += path
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("import%d", len(pl.imports))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastImport); err != nil {
		return "_", err
	}

	pl.imports = append(pl.imports, fn)
	return fn, nil
}

// writeRuntimeImport writes uast RuntimeImport as prolog predicate:
// runtime_import(['uast:RuntimeImport', Path, Pos']) :- positions(Pos), path(Path)
func (pl *uast2pl) writeRuntimeImport(i uast.RuntimeImport) (string, error) {
	format := "%s(['%s', Path, Pos])"

	pos, err := pl.writePositions(i.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	path := "_"
	if node, ok := i.Path.(nodes.Node); ok {
		path, err = pl.writeNode(node)
	}
	if path == "_" {
		format = strings.Replace(format, "Path", "_", 1)
	} else {
		path = fmt.Sprintf("%s(Path)", path)
	}

	if pos != "_" || path != "_" {
		format += " :- "
		if path != "_" {
			format += path
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("runtime_import%d", len(pl.runtimeImports))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastRuntimeImport); err != nil {
		return "_", err
	}

	pl.runtimeImports = append(pl.runtimeImports, fn)
	return fn, nil
}

// writeRuntimeReImport writes uast RuntimeReImport as prolog predicate:
// runtime_reimport(['uast:RuntimeReImport', Path, Pos']) :- positions(Pos), path(Path)
func (pl *uast2pl) writeRuntimeReImport(i uast.RuntimeReImport) (string, error) {
	format := "%s(['%s', Path, Pos])"

	pos, err := pl.writePositions(i.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	path := "_"
	if node, ok := i.Path.(nodes.Node); ok {
		path, err = pl.writeNode(node)
	}
	if path == "_" {
		format = strings.Replace(format, "Path", "_", 1)
	} else {
		path = fmt.Sprintf("%s(Path)", path)
	}

	if pos != "_" || path != "_" {
		format += " :- "
		if path != "_" {
			format += path
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("runtime_reimport%d", len(pl.runtimeReImports))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastRuntimeReImport); err != nil {
		return "_", err
	}

	pl.runtimeReImports = append(pl.runtimeReImports, fn)
	return fn, nil
}

// writeInlineImport writes uast InlineImport as prolog predicate:
// inline_import(['uast:InlineImport', Path, Pos']) :- positions(Pos), path(Path)
func (pl *uast2pl) writeInlineImport(i uast.InlineImport) (string, error) {
	format := "%s(['%s', Path, Pos])"

	pos, err := pl.writePositions(i.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	path := "_"
	if node, ok := i.Path.(nodes.Node); ok {
		path, err = pl.writeNode(node)
	}
	if path == "_" {
		format = strings.Replace(format, "Path", "_", 1)
	} else {
		path = fmt.Sprintf("%s(Path)", path)
	}

	if pos != "_" || path != "_" {
		format += " :- "
		if path != "_" {
			format += path
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("inline_import%d", len(pl.inlineImports))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastInlineImport); err != nil {
		return "_", err
	}

	pl.inlineImports = append(pl.inlineImports, fn)
	return fn, nil
}

// writeArgument writes  uast Argument as prolog predicate:
// argument(['uast:Argument', Name, Type, Init, Variadic, MapVariadic, Receiver, Pos]) :- identifier(Name), bool(Type), bool(Init), bool(Variadic), bool(MapVariadic), bool(Receiver), positions(Pos).
func (pl *uast2pl) writeArgument(a uast.Argument) (string, error) {
	format := "%s(['%s', Name, Type, Init, %s, %s, %s, Pos])"

	var err error
	name := "_"
	if a.Name != nil {
		if name, err = pl.writeIdentifier(*a.Name); err != nil {
			return "_", err
		}
	}
	if name == "_" {
		format = strings.Replace(format, "Name", "_", 1)
	} else {
		name = fmt.Sprintf("%s(Name)", name)
	}

	typ := "_"
	if node, ok := a.Type.(nodes.Node); ok {
		if typ, err = pl.writeNode(node); err != nil {
			return "_", err
		}
	}
	if typ == "_" {
		format = strings.Replace(format, "Type", "_", 1)
	} else {
		typ = fmt.Sprintf("%s(Type)", typ)
	}

	init := "_"
	if node, ok := a.Init.(nodes.Node); ok {
		if init, err = pl.writeNode(node); err != nil {
			return "_", err
		}
	}
	if init == "_" {
		format = strings.Replace(format, "Init", "_", 1)
	} else {
		init = fmt.Sprintf("%s(Init)", init)
	}

	pos, err := pl.writePositions(a.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	if name != "_" || typ != "_" || init != "_" || pos != "_" {
		format += " :- "
		if name != "_" {
			format += name
			if typ != "_" || init != "_" || pos != "_" {
				format += ","
			}
		}

		if typ != "_" {
			format += typ
			if init != "_" || pos != "_" {
				format += ","
			}
		}

		if init != "_" {
			format += init
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("argument%d", len(pl.arguments))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastArgument,
		strconv.FormatBool(a.Variadic), strconv.FormatBool(a.MapVariadic), strconv.FormatBool(a.Receiver)); err != nil {
		return "_", err
	}

	pl.arguments = append(pl.arguments, fn)
	return fn, nil

}

// writeFunctionType writes  uast FunctionType as prolog predicate:
// function_type(['uast:FunctionType', [Arguments], [Returns], Pos]) :- pos(Pos).
func (pl *uast2pl) writeFunctionType(f uast.FunctionType) (string, error) {
	format := "%s(['%s', [Arguments], [Returns], Pos])"

	pos, err := pl.writePositions(f.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	var (
		vars []string
		args []string
	)
	for _, ai := range f.Arguments {
		arg, err := pl.writeArgument(ai)
		if err != nil {
			return "_", err
		}
		if arg != "_" {
			v := fmt.Sprintf("Arg%d", len(vars))
			vars = append(vars, v)
			args = append(args, fmt.Sprintf("%s(%s)", arg, v))

		}
	}
	format = strings.Replace(format, "Arguments", strings.Join(vars, ","), 1)

	nargs := len(args)
	var (
		rets []string
	)
	vars = nil
	for _, ri := range f.Returns {
		ret, err := pl.writeArgument(ri)
		if err != nil {
			return "_", err
		}
		if ret != "_" {
			v := fmt.Sprintf("Ret%d", len(vars))
			vars = append(vars, v)
			rets = append(rets, fmt.Sprintf("%s(%s)", ret, v))

		}
	}
	format = strings.Replace(format, "Returns", strings.Join(vars, ","), 1)

	nrets := len(rets)
	if nargs > 0 || nrets > 0 || pos != "_" {
		format += " :- "
		if nargs > 0 {
			format += strings.Join(args, ",")
			if nrets > 0 || pos != "_" {
				format += ","
			}
		}

		if nrets > 0 {
			format += strings.Join(rets, ",")
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("function_type%d", len(pl.functionTypes))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastFunctionType); err != nil {
		return "_", err
	}

	pl.functionTypes = append(pl.functionTypes, fn)
	return fn, nil
}

// writeFunction writes  uast Function as prolog predicate:
// function(['uast:Function', FuncType, Body, Pos]) :- function_type(FuncType), block(Body), positions(Pos).
func (pl *uast2pl) writeFunction(f uast.Function) (string, error) {
	format := "%s(['%s', FnType, Body, Pos])"

	fntype, err := pl.writeFunctionType(f.Type)
	if err != nil {
		return "_", err
	}
	if fntype == "_" {
		format = strings.Replace(format, "FnType", "_", 1)
	} else {
		fntype = fmt.Sprintf("%s(FnType)", fntype)
	}

	body, err := pl.writeBlock(*f.Body)
	if err != nil {
		return "_", err
	}
	if body == "_" {
		format = strings.Replace(format, "Body", "_", 1)
	} else {
		body = fmt.Sprintf("%s(Body)", body)
	}

	pos, err := pl.writePositions(f.Positions)
	if err != nil {
		return "_", err
	}
	if pos == "_" {
		format = strings.Replace(format, "Pos", "_", 1)
	} else {
		pos = fmt.Sprintf("%s(Pos)", pos)
	}

	if fntype != "_" || body != "_" || pos != "_" {
		format += " :- "
		if fntype != "_" {
			format += fntype
			if body != "_" || pos != "_" {
				format += ","
			}
		}

		if body != "_" {
			format += body
			if pos != "_" {
				format += ","
			}
		}

		if pos != "_" {
			format += pos
		}
	}

	fn := fmt.Sprintf("function%d", len(pl.functions))
	if _, err := fmt.Fprintf(pl.w, format+".\n", fn, uastFunction); err != nil {
		return "_", err
	}

	pl.functions = append(pl.functions, fn)
	return fn, nil
}

func (pl *uast2pl) writeDeclaration(err error, fn string, arg string, preds []string) error {
	if err != nil {
		return err
	}
	format := "%% %s(%s).\n%s(X)"
	if len(preds) == 0 {
		format = strings.Replace(format, "X", "_", 1)
		format += " :- fail"
	} else {
		body := joinFunc(preds, ";", func(term string) string { return fmt.Sprintf("%s(X)", term) })
		if body != "" {
			format += " :- " + body
		}
	}

	_, err = fmt.Fprintf(pl.w, "\n"+format+".\n", fn, arg, fn)
	return err
}

func joinFunc(arr []string, sep string, fn func(string) string) string {
	var str string
	n := len(arr)
	for i, s := range arr {
		str += fn(s)
		if i < n-1 {
			str += sep
		}
	}
	return str
}
