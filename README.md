# uast2pl
This is kind of [Universal Abstract Syntax Tree](https://doc.bblf.sh/uast/uast-specification-v2.html) to Prolog transpiler.
It takes *UAST* node as an input and tries to produce equivalent prolog program.


### Example
For a given [hello.java](http://play.bblf.sh) file:
```java
// hello.java
import java.io.*;
import javax.servlet.*;

public class Hello extends GenericServlet {
    public void service(final ServletRequest request, final ServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html");
        final PrintWriter pw = response.getWriter();
        try {
            pw.println("Hello, world!");
        } finally {
            pw.close();
        }
    }
}
```

we get following *UAST*:
```
+ Node
|   + @role[]string
|   |    File
|   +- @type: java:CompilationUnit
|   +- comments[]node
|   |   + Node
|   |   |   @typeuast:Comment
|   |   |   Block: false
|   |   |   Prefix 
|   |   |   Suffix
|   |   |   Tab
|   |   |   Text: hello.java
|   + imports[]node
|   |   + Node
|   |   |   @type: uast:Import
|   |   |   All: true
|   |   |   Names[]any
|   |   |   + Path
|   |   |   |   @type: uast:QualifiedIdentifier
|   |   |   |   + Names[]node
|   |   |   |   |   + Node
|   |   |   |   |   |   @type: uast:Identifier
|   |   |   |   |   |   Name: java

...
```

which can be transpiled to prolog program:
```prolog
% ...
role0('Identifier').
value1('java:CompilationUnit').
comment0(['uast:Comment', ' ', '', '', 'hello.java', false, Pos]) :- positions1(Pos).
positions4(['uast:Positions', Start, End]) :- position5(Start), position7(End).
identifier0(['uast:Identifier', 'java', Pos, [Role0]]) :- positions4(Pos),role0(Role0).
identifier1(['uast:Identifier', 'io', Pos, [Role0]]) :- positions5(Pos),role0(Role0).
value4('java:Modifier').
value8('java:SimpleType').
value10('java:TypeDeclaration').
qualified_identifier0(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions3(Pos),identifier0(Name0),identifier1(Name1).
import0(['uast:Import', Path, Pos]) :- qualified_identifier0(Path),positions2(Pos).
% ...

```

Now, we can query DB:
```prolog
% get paths, columns and line number for the first import

%- import(['uast:Import', Path, Pos])
?- import0([_, [_, [[_, Path1, [_, [_, Col1, Line1, _], _], _], [_, Path2, [_, [_, Col2, Line2, _], _], _]], _], _]).

% Path1 = java,
% Col1 = 8,

% Line1 = Line2, Line2 = 2,

% Path2 = io,
% Col2 = 13.
```

_Happy hacking!_
