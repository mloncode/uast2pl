value0('python:Module').
position0(['uast:Position', 5, 1, 4]).
position1(['uast:Position', 8, 1, 7]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
value1(false).
object0(_).
array0([]).
object1(Obj) :- !,value1(Obj);object0(Obj);array0(Obj).
positions1(['uast:Positions', _, _]).
positions2(['uast:Positions', _, _]).
position2(['uast:Position', 9, 1, 8]).
position3(['uast:Position', 10, 1, 9]).
positions3(['uast:Positions', Start, End]) :- position2(Start), position3(End).
role0('Identifier').
identifier0(['uast:Identifier', 'n', Pos, [Role0]]) :- positions3(Pos),role0(Role0).
positions4(['uast:Positions', Start, End]) :- position2(Start), position3(End).
argument0(['uast:Argument', Name, _, _, false, false, false, Pos]) :- identifier0(Name),positions4(Pos).
position4(['uast:Position', 12, 1, 11]).
position5(['uast:Position', 13, 1, 12]).
positions5(['uast:Positions', Start, End]) :- position4(Start), position5(End).
identifier1(['uast:Identifier', 'a', Pos, [Role0]]) :- positions5(Pos),role0(Role0).
value2(0).
position6(['uast:Position', 16, 1, 15]).
position7(['uast:Position', 17, 1, 16]).
positions6(['uast:Positions', Start, End]) :- position6(Start), position7(End).
value3('Expression').
value4('Literal').
value5('Number').
value6('Primitive').
array1([Arg0,Arg1,Arg2,Arg3]) :- value3(Arg0),value4(Arg1),value5(Arg2),value6(Arg3).
value7('python:Num').
object2(Obj) :- !,value2(Obj);positions6(Obj);array1(Obj);value7(Obj).
positions7(['uast:Positions', Start, End]) :- position4(Start), position5(End).
argument1(['uast:Argument', Name, _, Init, false, false, false, Pos]) :- identifier1(Name),object2(Init),positions7(Pos).
position8(['uast:Position', 19, 1, 18]).
position9(['uast:Position', 20, 1, 19]).
positions8(['uast:Positions', Start, End]) :- position8(Start), position9(End).
identifier2(['uast:Identifier', 'b', Pos, [Role0]]) :- positions8(Pos),role0(Role0).
array2([Arg0,Arg1,Arg2,Arg3]) :- value3(Arg0),value4(Arg1),value5(Arg2),value6(Arg3).
value8(1).
position10(['uast:Position', 23, 1, 22]).
position11(['uast:Position', 24, 1, 23]).
positions9(['uast:Positions', Start, End]) :- position10(Start), position11(End).
object3(Obj) :- !,array2(Obj);value7(Obj);value8(Obj);positions9(Obj).
positions10(['uast:Positions', Start, End]) :- position8(Start), position9(End).
argument2(['uast:Argument', Name, _, Init, false, false, false, Pos]) :- identifier2(Name),object3(Init),positions10(Pos).
positions11(['uast:Positions', _, _]).
identifier3(['uast:Identifier', 'None', Pos, [Role0]]) :- positions11(Pos),role0(Role0).
positions12(['uast:Positions', _, _]).
argument3(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier3(Init),positions12(Pos).
function_type0(['uast:FunctionType', [Arg0,Arg1,Arg2], [Ret0], Pos]) :- argument0(Arg0),argument1(Arg1),argument2(Arg2),argument3(Ret0),positions2(Pos).
positions13(['uast:Positions', _, _]).
position12(['uast:Position', 5, 2, 30]).
position13(['uast:Position', 7, 2, 32]).
positions14(['uast:Positions', Start, End]) :- position12(Start), position13(End).
value9('If').
array3([Arg0,Arg1]) :- value9(Arg0),value3(Arg1).
value10('python:If').
value11('Body').
value12('Then').
array4([Arg0,Arg1,Arg2]) :- value9(Arg0),value11(Arg1),value12(Arg2).
value13('python:If.body').
value14('Return').
value15('Statement').
array5([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
value16('python:Return').
value17('return').
value18('python:BoxedName').
position14(['uast:Position', 16, 3, 56]).
position15(['uast:Position', 17, 3, 57]).
positions15(['uast:Positions', Start, End]) :- position14(Start), position15(End).
identifier4(['uast:Identifier', 'a', Pos, [Role0]]) :- positions15(Pos),role0(Role0).
value19('Load').
object4(Obj) :- !,value18(Obj);identifier4(Obj);value19(Obj).
position16(['uast:Position', 9, 3, 49]).
position17(['uast:Position', 15, 3, 55]).
positions16(['uast:Positions', Start, End]) :- position16(Start), position17(End).
object5(Obj) :- !,array5(Obj);value16(Obj);value17(Obj);object4(Obj);positions16(Obj).
array6([Arg0]) :- object5(Arg0).
object6(Obj) :- !,array4(Obj);value13(Obj);array6(Obj).
value20('if').
value21('Else').
array7([Arg0,Arg1,Arg2]) :- value9(Arg0),value11(Arg1),value21(Arg2).
value22('python:If.orelse').
value23('else').
array8([]).
object7(Obj) :- !,array7(Obj);value22(Obj);value23(Obj);array8(Obj).
value24('python:Compare').
value25('Right').
array9([Arg0,Arg1]) :- value3(Arg0),value25(Arg1).
value26('python:Compare.comparators').
position18(['uast:Position', 13, 2, 38]).
position19(['uast:Position', 14, 2, 39]).
positions17(['uast:Positions', Start, End]) :- position18(Start), position19(End).
array10([Arg0,Arg1,Arg2,Arg3]) :- value3(Arg0),value4(Arg1),value5(Arg2),value6(Arg3).
object8(Obj) :- !,positions17(Obj);array10(Obj);value7(Obj);value2(Obj).
array11([Arg0]) :- object8(Arg0).
object9(Obj) :- !,array9(Obj);value26(Obj);array11(Obj).
position20(['uast:Position', 8, 2, 33]).
position21(['uast:Position', 9, 2, 34]).
positions18(['uast:Positions', Start, End]) :- position20(Start), position21(End).
identifier5(['uast:Identifier', 'n', Pos, [Role0]]) :- positions18(Pos),role0(Role0).
value27('Left').
array12([Arg0,Arg1]) :- value3(Arg0),value27(Arg1).
object10(Obj) :- !,value18(Obj);identifier5(Obj);value19(Obj);array12(Obj).
array13([Arg0]) :- value3(Arg0).
value28('python:Compare.ops').
positions19(['uast:Positions', _, _]).
value29('Operator').
value30('Relational').
value31('Equal').
array14([Arg0,Arg1,Arg2]) :- value29(Arg0),value30(Arg1),value31(Arg2).
value32('python:Eq').
value33('==').
object11(Obj) :- !,positions19(Obj);array14(Obj);value32(Obj);value33(Obj).
array15([Arg0]) :- object11(Arg0).
object12(Obj) :- !,array13(Obj);value28(Obj);array15(Obj).
positions20(['uast:Positions', Start, _]) :- position20(Start).
value34('Binary').
value35('Condition').
array16([Arg0,Arg1,Arg2,Arg3]) :- value3(Arg0),value34(Arg1),value35(Arg2),value9(Arg3).
object13(Obj) :- !,value24(Obj);object9(Obj);object10(Obj);object12(Obj);positions20(Obj);array16(Obj).
object14(Obj) :- !,positions14(Obj);array3(Obj);value10(Obj);object6(Obj);value20(Obj);object7(Obj);object13(Obj).
array17([Arg0,Arg1,Arg2,Arg3]) :- value3(Arg0),value34(Arg1),value35(Arg2),value9(Arg3).
array18([Arg0,Arg1,Arg2,Arg3]) :- value3(Arg0),value4(Arg1),value5(Arg2),value6(Arg3).
position22(['uast:Position', 13, 4, 70]).
position23(['uast:Position', 14, 4, 71]).
positions21(['uast:Positions', Start, End]) :- position22(Start), position23(End).
object15(Obj) :- !,array18(Obj);value7(Obj);value8(Obj);positions21(Obj).
array19([Arg0]) :- object15(Arg0).
array20([Arg0,Arg1]) :- value3(Arg0),value25(Arg1).
object16(Obj) :- !,value26(Obj);array19(Obj);array20(Obj).
position24(['uast:Position', 8, 4, 65]).
position25(['uast:Position', 9, 4, 66]).
positions22(['uast:Positions', Start, End]) :- position24(Start), position25(End).
identifier6(['uast:Identifier', 'n', Pos, [Role0]]) :- positions22(Pos),role0(Role0).
array21([Arg0,Arg1]) :- value3(Arg0),value27(Arg1).
object17(Obj) :- !,identifier6(Obj);value19(Obj);array21(Obj);value18(Obj).
array22([Arg0]) :- value3(Arg0).
array23([Arg0,Arg1,Arg2]) :- value29(Arg0),value30(Arg1),value31(Arg2).
positions23(['uast:Positions', _, _]).
object18(Obj) :- !,array23(Obj);value32(Obj);value33(Obj);positions23(Obj).
array24([Arg0]) :- object18(Arg0).
object19(Obj) :- !,array22(Obj);value28(Obj);array24(Obj).
positions24(['uast:Positions', Start, _]) :- position24(Start).
object20(Obj) :- !,array17(Obj);value24(Obj);object16(Obj);object17(Obj);object19(Obj);positions24(Obj).
position26(['uast:Position', 5, 4, 62]).
position27(['uast:Position', 7, 4, 64]).
positions25(['uast:Positions', Start, End]) :- position26(Start), position27(End).
array25([Arg0,Arg1]) :- value9(Arg0),value3(Arg1).
position28(['uast:Position', 9, 5, 81]).
position29(['uast:Position', 15, 5, 87]).
positions26(['uast:Positions', Start, End]) :- position28(Start), position29(End).
array26([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
position30(['uast:Position', 16, 5, 88]).
position31(['uast:Position', 17, 5, 89]).
positions27(['uast:Positions', Start, End]) :- position30(Start), position31(End).
identifier7(['uast:Identifier', 'b', Pos, [Role0]]) :- positions27(Pos),role0(Role0).
object21(Obj) :- !,value18(Obj);identifier7(Obj);value19(Obj).
object22(Obj) :- !,positions26(Obj);array26(Obj);value16(Obj);value17(Obj);object21(Obj).
array27([Arg0]) :- object22(Arg0).
array28([Arg0,Arg1,Arg2]) :- value9(Arg0),value11(Arg1),value12(Arg2).
object23(Obj) :- !,value13(Obj);array27(Obj);array28(Obj).
array29([Arg0,Arg1,Arg2]) :- value9(Arg0),value11(Arg1),value21(Arg2).
array30([]).
object24(Obj) :- !,array29(Obj);value22(Obj);value23(Obj);array30(Obj).
object25(Obj) :- !,object20(Obj);positions25(Obj);array25(Obj);value10(Obj);object23(Obj);value20(Obj);object24(Obj).
position32(['uast:Position', 5, 6, 94]).
position33(['uast:Position', 11, 6, 100]).
positions28(['uast:Positions', Start, End]) :- position32(Start), position33(End).
array31([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
value36('Function').
value37('Call').
array32([Arg0,Arg1,Arg2]) :- value36(Arg0),value37(Arg1),value3(Arg2).
value38('python:Call').
value39('python:BinOp').
array33([Arg0,Arg1,Arg2]) :- value3(Arg0),value34(Arg1),value27(Arg2).
position34(['uast:Position', 16, 6, 105]).
position35(['uast:Position', 17, 6, 106]).
positions29(['uast:Positions', Start, End]) :- position34(Start), position35(End).
identifier8(['uast:Identifier', 'n', Pos, [Role0]]) :- positions29(Pos),role0(Role0).
object26(Obj) :- !,value19(Obj);array33(Obj);value18(Obj);identifier8(Obj).
positions30(['uast:Positions', _, _]).
value40('Arithmetic').
value41('Substract').
array34([Arg0,Arg1,Arg2,Arg3]) :- value29(Arg0),value40(Arg1),value41(Arg2),value34(Arg3).
value42('python:Sub').
value43('-').
object27(Obj) :- !,positions30(Obj);array34(Obj);value42(Obj);value43(Obj).
position36(['uast:Position', 20, 6, 109]).
position37(['uast:Position', 21, 6, 110]).
positions31(['uast:Positions', Start, End]) :- position36(Start), position37(End).
array35([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value3(Arg0),value4(Arg1),value5(Arg2),value6(Arg3),value34(Arg4),value25(Arg5).
object28(Obj) :- !,positions31(Obj);array35(Obj);value7(Obj);value8(Obj).
positions32(['uast:Positions', Start, _]) :- position34(Start).
value44('Positional').
value45('Argument').
value46('Name').
array36([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value3(Arg0),value34(Arg1),value36(Arg2),value37(Arg3),value44(Arg4),value45(Arg5),value46(Arg6).
object29(Obj) :- !,value39(Obj);object26(Obj);object27(Obj);object28(Obj);positions32(Obj);array36(Obj).
array37([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value36(Arg0),value37(Arg1),value44(Arg2),value45(Arg3),value46(Arg4).
position38(['uast:Position', 23, 6, 112]).
position39(['uast:Position', 24, 6, 113]).
positions33(['uast:Positions', Start, End]) :- position38(Start), position39(End).
identifier9(['uast:Identifier', 'b', Pos, [Role0]]) :- positions33(Pos),role0(Role0).
object30(Obj) :- !,array37(Obj);value18(Obj);identifier9(Obj);value19(Obj).
position40(['uast:Position', 26, 6, 115]).
positions34(['uast:Positions', Start, _]) :- position40(Start).
array38([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value3(Arg0),value34(Arg1),value36(Arg2),value37(Arg3),value44(Arg4),value45(Arg5),value46(Arg6).
position41(['uast:Position', 27, 6, 116]).
positions35(['uast:Positions', Start, End]) :- position40(Start), position41(End).
identifier10(['uast:Identifier', 'a', Pos, [Role0]]) :- positions35(Pos),role0(Role0).
array39([Arg0,Arg1,Arg2]) :- value3(Arg0),value34(Arg1),value27(Arg2).
object31(Obj) :- !,value18(Obj);identifier10(Obj);value19(Obj);array39(Obj).
positions36(['uast:Positions', _, _]).
value47('Add').
array40([Arg0,Arg1,Arg2,Arg3]) :- value29(Arg0),value40(Arg1),value47(Arg2),value34(Arg3).
value48('python:Add').
value49('+').
object32(Obj) :- !,positions36(Obj);array40(Obj);value48(Obj);value49(Obj).
array41([Arg0,Arg1,Arg2]) :- value3(Arg0),value34(Arg1),value25(Arg2).
position42(['uast:Position', 30, 6, 119]).
position43(['uast:Position', 31, 6, 120]).
positions37(['uast:Positions', Start, End]) :- position42(Start), position43(End).
identifier11(['uast:Identifier', 'b', Pos, [Role0]]) :- positions37(Pos),role0(Role0).
object33(Obj) :- !,array41(Obj);value18(Obj);identifier11(Obj);value19(Obj).
object34(Obj) :- !,positions34(Obj);array38(Obj);value39(Obj);object31(Obj);object32(Obj);object33(Obj).
array42([Arg0,Arg1,Arg2]) :- object29(Arg0),object30(Arg1),object34(Arg2).
position44(['uast:Position', 12, 6, 101]).
position45(['uast:Position', 15, 6, 104]).
positions38(['uast:Positions', Start, End]) :- position44(Start), position45(End).
identifier12(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions38(Pos),role0(Role0).
value50('Callee').
array43([Arg0,Arg1]) :- value37(Arg0),value50(Arg1).
object35(Obj) :- !,value18(Obj);identifier12(Obj);value19(Obj);array43(Obj).
array44([]).
positions39(['uast:Positions', Start, _]) :- position44(Start).
object36(Obj) :- !,array32(Obj);value38(Obj);array42(Obj);object35(Obj);array44(Obj);positions39(Obj).
object37(Obj) :- !,positions28(Obj);array31(Obj);value16(Obj);value17(Obj);object36(Obj).
block0(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions13(Pos),object14(Stmt0),object25(Stmt1),object37(Stmt2).
positions40(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions40(Pos).
positions41(['uast:Positions', _, _]).
identifier13(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions41(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier13(Name),function0(Node),positions1(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions0(Pos),object1(Node0),alias0(Node1).
array45([Arg0]) :- function_group0(Arg0).
positions42(['uast:Positions', _, _]).
value51('File').
value52('Module').
array46([Arg0,Arg1]) :- value51(Arg0),value52(Arg1).
object38(Obj) :- !,value0(Obj);array45(Obj);positions42(Obj);array46(Obj).

% value(Val).
value(X) :- value0(X);value1(X);value2(X);value3(X);value4(X);value5(X);value6(X);value7(X);value8(X);value9(X);value10(X);value11(X);value12(X);value13(X);value14(X);value15(X);value16(X);value17(X);value18(X);value19(X);value20(X);value21(X);value22(X);value23(X);value24(X);value25(X);value26(X);value27(X);value28(X);value29(X);value30(X);value31(X);value32(X);value33(X);value34(X);value35(X);value36(X);value37(X);value38(X);value39(X);value40(X);value41(X);value42(X);value43(X);value44(X);value45(X);value46(X);value47(X);value48(X);value49(X);value50(X);value51(X);value52(X).

% array([Arguments]).
array(X) :- array0(X);array1(X);array2(X);array3(X);array4(X);array5(X);array6(X);array7(X);array8(X);array9(X);array10(X);array11(X);array12(X);array13(X);array14(X);array15(X);array16(X);array17(X);array18(X);array19(X);array20(X);array21(X);array22(X);array23(X);array24(X);array25(X);array26(X);array27(X);array28(X);array29(X);array30(X);array31(X);array32(X);array33(X);array34(X);array35(X);array36(X);array37(X);array38(X);array39(X);array40(X);array41(X);array42(X);array43(X);array44(X);array45(X);array46(X).

% object(Obj).
object(X) :- object0(X);object1(X);object2(X);object3(X);object4(X);object5(X);object6(X);object7(X);object8(X);object9(X);object10(X);object11(X);object12(X);object13(X);object14(X);object15(X);object16(X);object17(X);object18(X);object19(X);object20(X);object21(X);object22(X);object23(X);object24(X);object25(X);object26(X);object27(X);object28(X);object29(X);object30(X);object31(X);object32(X);object33(X);object34(X);object35(X);object36(X);object37(X);object38(X).

% role(Name).
role(X) :- role0(X).

% position([Type, Col, Line, Offset]).
position(X) :- position0(X);position1(X);position2(X);position3(X);position4(X);position5(X);position6(X);position7(X);position8(X);position9(X);position10(X);position11(X);position12(X);position13(X);position14(X);position15(X);position16(X);position17(X);position18(X);position19(X);position20(X);position21(X);position22(X);position23(X);position24(X);position25(X);position26(X);position27(X);position28(X);position29(X);position30(X);position31(X);position32(X);position33(X);position34(X);position35(X);position36(X);position37(X);position38(X);position39(X);position40(X);position41(X);position42(X);position43(X);position44(X);position45(X).

% positions([Type, Start, End]).
positions(X) :- positions0(X);positions1(X);positions2(X);positions3(X);positions4(X);positions5(X);positions6(X);positions7(X);positions8(X);positions9(X);positions10(X);positions11(X);positions12(X);positions13(X);positions14(X);positions15(X);positions16(X);positions17(X);positions18(X);positions19(X);positions20(X);positions21(X);positions22(X);positions23(X);positions24(X);positions25(X);positions26(X);positions27(X);positions28(X);positions29(X);positions30(X);positions31(X);positions32(X);positions33(X);positions34(X);positions35(X);positions36(X);positions37(X);positions38(X);positions39(X);positions40(X);positions41(X);positions42(X).

% identifier([Type, Name, Pos, [Roles]]).
identifier(X) :- identifier0(X);identifier1(X);identifier2(X);identifier3(X);identifier4(X);identifier5(X);identifier6(X);identifier7(X);identifier8(X);identifier9(X);identifier10(X);identifier11(X);identifier12(X);identifier13(X).

% qualified_identifier([Type, [Names], Pos]).
qualified_identifier(_) :- fail.

% comment([Type, Prefix, Suffix, Tab, Text, Block, Pos]).
comment(_) :- fail.

% group([Type, [Nodes], Pos]).
group(_) :- fail.

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X).

% alias([Type, Name, Node, Pos]).
alias(X) :- alias0(X).

% import([Type, Path, Pos]).
import(_) :- fail.

% runtime_import([Type, Path, Pos]).
runtime_import(_) :- fail.

% runtime_reimport([Type, Path, Pos]).
runtime_reimport(_) :- fail.

% inline_import([Type, Path, Pos]).
inline_import(_) :- fail.

% argument([Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]).
argument(X) :- argument0(X);argument1(X);argument2(X);argument3(X).

% function_type([Type, [Arguments], [Returns], Pos]).
function_type(X) :- function_type0(X).

% function([Type, FuncType, Body, Pos]).
function(X) :- function0(X).
