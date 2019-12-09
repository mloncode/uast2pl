value0('Visibility').
value1('World').
value2('Declaration').
value3('Type').
array0([Arg0,Arg1,Arg2,Arg3]) :- value0(Arg0),value1(Arg1),value2(Arg2),value3(Arg3).
value4('java:TypeDeclaration').
value5('false').
position0(['uast:Position', 1, 5, 57]).
position1(['uast:Position', 7, 5, 63]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
array1([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
value6('java:Modifier').
value7('public').
object0(Obj) :- positions0(Obj), !.
object0(Obj) :- array1(Obj), !.
object0(Obj) :- value6(Obj), !.
object0(Obj) :- value7(Obj), !.
array2([Arg0]) :- object0(Arg0).
position2(['uast:Position', 2, 16, 445]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position2(End).
position3(['uast:Position', 14, 5, 70]).
position4(['uast:Position', 19, 5, 75]).
positions2(['uast:Positions', Start, End]) :- position3(Start), position4(End).
role0('Identifier').
identifier0(['uast:Identifier', 'Hello', Pos, [Role0]]) :- positions2(Pos),role0(Role0).
position5(['uast:Position', 28, 5, 84]).
position6(['uast:Position', 42, 5, 98]).
positions3(['uast:Positions', Start, End]) :- position5(Start), position6(End).
array3([Arg0]) :- value3(Arg0).
value8('java:SimpleType').
positions4(['uast:Positions', Start, End]) :- position5(Start), position6(End).
identifier1(['uast:Identifier', 'GenericServlet', Pos, [Role0]]) :- positions4(Pos),role0(Role0).
object1(Obj) :- positions3(Obj), !.
object1(Obj) :- array3(Obj), !.
object1(Obj) :- value8(Obj), !.
object1(Obj) :- identifier1(Obj), !.
position7(['uast:Position', 5, 6, 105]).
position8(['uast:Position', 6, 15, 443]).
positions5(['uast:Positions', Start, End]) :- position7(Start), position8(End).
position9(['uast:Position', 11, 6, 111]).
positions6(['uast:Positions', Start, End]) :- position7(Start), position9(End).
array4([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
object2(Obj) :- value6(Obj), !.
object2(Obj) :- value7(Obj), !.
object2(Obj) :- positions6(Obj), !.
object2(Obj) :- array4(Obj), !.
array5([Arg0]) :- object2(Arg0).
positions7(['uast:Positions', _, _]).
positions8(['uast:Positions', _, _]).
position10(['uast:Position', 46, 6, 146]).
position11(['uast:Position', 53, 6, 153]).
positions9(['uast:Positions', Start, End]) :- position10(Start), position11(End).
identifier2(['uast:Identifier', 'request', Pos, [Role0]]) :- positions9(Pos),role0(Role0).
position12(['uast:Position', 31, 6, 131]).
position13(['uast:Position', 45, 6, 145]).
positions10(['uast:Positions', Start, End]) :- position12(Start), position13(End).
array6([Arg0]) :- value3(Arg0).
positions11(['uast:Positions', Start, End]) :- position12(Start), position13(End).
identifier3(['uast:Identifier', 'ServletRequest', Pos, [Role0]]) :- positions11(Pos),role0(Role0).
object3(Obj) :- value8(Obj), !.
object3(Obj) :- identifier3(Obj), !.
object3(Obj) :- positions10(Obj), !.
object3(Obj) :- array6(Obj), !.
position14(['uast:Position', 25, 6, 125]).
positions12(['uast:Positions', Start, End]) :- position14(Start), position11(End).
argument0(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier2(Name),object3(Type),positions12(Pos).
position15(['uast:Position', 77, 6, 177]).
position16(['uast:Position', 85, 6, 185]).
positions13(['uast:Positions', Start, End]) :- position15(Start), position16(End).
identifier4(['uast:Identifier', 'response', Pos, [Role0]]) :- positions13(Pos),role0(Role0).
position17(['uast:Position', 61, 6, 161]).
position18(['uast:Position', 76, 6, 176]).
positions14(['uast:Positions', Start, End]) :- position17(Start), position18(End).
array7([Arg0]) :- value3(Arg0).
positions15(['uast:Positions', Start, End]) :- position17(Start), position18(End).
identifier5(['uast:Identifier', 'ServletResponse', Pos, [Role0]]) :- positions15(Pos),role0(Role0).
object4(Obj) :- positions14(Obj), !.
object4(Obj) :- array7(Obj), !.
object4(Obj) :- value8(Obj), !.
object4(Obj) :- identifier5(Obj), !.
position19(['uast:Position', 55, 6, 155]).
positions16(['uast:Positions', Start, End]) :- position19(Start), position16(End).
argument1(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier4(Name),object4(Type),positions16(Pos).
function_type0(['uast:FunctionType', [Arg0,Arg1], [], Pos]) :- argument0(Arg0),argument1(Arg1),positions8(Pos).
position20(['uast:Position', 42, 7, 228]).
positions17(['uast:Positions', Start, End]) :- position20(Start), position8(End).
value9('java:ExpressionStatement').
position21(['uast:Position', 9, 8, 238]).
position22(['uast:Position', 45, 8, 274]).
positions18(['uast:Positions', Start, End]) :- position21(Start), position22(End).
value10('Expression').
value11('Call').
array8([Arg0,Arg1]) :- value10(Arg0),value11(Arg1).
value12('java:MethodInvocation').
position23(['uast:Position', 18, 8, 247]).
position24(['uast:Position', 32, 8, 261]).
positions19(['uast:Positions', Start, End]) :- position23(Start), position24(End).
identifier6(['uast:Identifier', 'setContentType', Pos, [Role0]]) :- positions19(Pos),role0(Role0).
position25(['uast:Position', 17, 8, 246]).
positions20(['uast:Positions', Start, End]) :- position21(Start), position25(End).
identifier7(['uast:Identifier', 'response', Pos, [Role0]]) :- positions20(Pos),role0(Role0).
value13('Argument').
value14('Positional').
array9([Arg0,Arg1,Arg2]) :- value11(Arg0),value13(Arg1),value14(Arg2).
value15('uast:String').
value16('').
value17('text/html').
position26(['uast:Position', 33, 8, 262]).
position27(['uast:Position', 44, 8, 273]).
positions21(['uast:Positions', Start, End]) :- position26(Start), position27(End).
object5(Obj) :- value16(Obj), !.
object5(Obj) :- value17(Obj), !.
object5(Obj) :- positions21(Obj), !.
object5(Obj) :- array9(Obj), !.
object5(Obj) :- value15(Obj), !.
array10([Arg0]) :- object5(Arg0).
object6(Obj) :- positions18(Obj), !.
object6(Obj) :- array8(Obj), !.
object6(Obj) :- value12(Obj), !.
object6(Obj) :- identifier6(Obj), !.
object6(Obj) :- identifier7(Obj), !.
object6(Obj) :- array10(Obj), !.
position28(['uast:Position', 46, 8, 275]).
positions22(['uast:Positions', Start, End]) :- position21(Start), position28(End).
value18('Statement').
array11([Arg0]) :- value18(Arg0).
object7(Obj) :- value9(Obj), !.
object7(Obj) :- object6(Obj), !.
object7(Obj) :- positions22(Obj), !.
object7(Obj) :- array11(Obj), !.
position29(['uast:Position', 9, 9, 284]).
position30(['uast:Position', 14, 9, 289]).
positions23(['uast:Positions', Start, End]) :- position29(Start), position30(End).
value19('Incomplete').
array12([Arg0]) :- value19(Arg0).
value20('final').
object8(Obj) :- array12(Obj), !.
object8(Obj) :- value6(Obj), !.
object8(Obj) :- value20(Obj), !.
object8(Obj) :- positions23(Obj), !.
array13([Arg0]) :- object8(Arg0).
position31(['uast:Position', 32, 9, 307]).
position32(['uast:Position', 52, 9, 327]).
positions24(['uast:Positions', Start, End]) :- position31(Start), position32(End).
array14([Arg0,Arg1]) :- value10(Arg0),value11(Arg1).
position33(['uast:Position', 41, 9, 316]).
position34(['uast:Position', 50, 9, 325]).
positions25(['uast:Positions', Start, End]) :- position33(Start), position34(End).
identifier8(['uast:Identifier', 'getWriter', Pos, [Role0]]) :- positions25(Pos),role0(Role0).
position35(['uast:Position', 40, 9, 315]).
positions26(['uast:Positions', Start, End]) :- position31(Start), position35(End).
identifier9(['uast:Identifier', 'response', Pos, [Role0]]) :- positions26(Pos),role0(Role0).
object9(Obj) :- identifier8(Obj), !.
object9(Obj) :- identifier9(Obj), !.
object9(Obj) :- positions24(Obj), !.
object9(Obj) :- array14(Obj), !.
object9(Obj) :- value12(Obj), !.
position36(['uast:Position', 27, 9, 302]).
positions27(['uast:Positions', Start, End]) :- position36(Start), position32(End).
value21('Variable').
array15([Arg0,Arg1]) :- value2(Arg0),value21(Arg1).
value22('java:VariableDeclarationFragment').
position37(['uast:Position', 29, 9, 304]).
positions28(['uast:Positions', Start, End]) :- position36(Start), position37(End).
identifier10(['uast:Identifier', 'pw', Pos, [Role0]]) :- positions28(Pos),role0(Role0).
object10(Obj) :- object9(Obj), !.
object10(Obj) :- positions27(Obj), !.
object10(Obj) :- array15(Obj), !.
object10(Obj) :- value22(Obj), !.
object10(Obj) :- identifier10(Obj), !.
array16([Arg0]) :- object10(Arg0).
position38(['uast:Position', 15, 9, 290]).
position39(['uast:Position', 26, 9, 301]).
positions29(['uast:Positions', Start, End]) :- position38(Start), position39(End).
array17([Arg0]) :- value3(Arg0).
positions30(['uast:Positions', Start, End]) :- position38(Start), position39(End).
identifier11(['uast:Identifier', 'PrintWriter', Pos, [Role0]]) :- positions30(Pos),role0(Role0).
object11(Obj) :- positions29(Obj), !.
object11(Obj) :- array17(Obj), !.
object11(Obj) :- value8(Obj), !.
object11(Obj) :- identifier11(Obj), !.
position40(['uast:Position', 53, 9, 328]).
positions31(['uast:Positions', Start, End]) :- position29(Start), position40(End).
array18([Arg0,Arg1,Arg2]) :- value18(Arg0),value2(Arg1),value21(Arg2).
value23('java:VariableDeclarationStatement').
object12(Obj) :- array13(Obj), !.
object12(Obj) :- array16(Obj), !.
object12(Obj) :- object11(Obj), !.
object12(Obj) :- positions31(Obj), !.
object12(Obj) :- array18(Obj), !.
object12(Obj) :- value23(Obj), !.
position41(['uast:Position', 9, 10, 337]).
position42(['uast:Position', 10, 14, 437]).
positions32(['uast:Positions', Start, End]) :- position41(Start), position42(End).
value24('Try').
array19([Arg0,Arg1]) :- value18(Arg0),value24(Arg1).
value25('java:TryStatement').
position43(['uast:Position', 13, 10, 341]).
position44(['uast:Position', 10, 12, 393]).
positions33(['uast:Positions', Start, End]) :- position43(Start), position44(End).
position45(['uast:Position', 24, 11, 366]).
position46(['uast:Position', 39, 11, 381]).
positions34(['uast:Positions', Start, End]) :- position45(Start), position46(End).
array20([Arg0,Arg1,Arg2]) :- value11(Arg0),value13(Arg1),value14(Arg2).
value26('Hello, world!').
object13(Obj) :- value16(Obj), !.
object13(Obj) :- value26(Obj), !.
object13(Obj) :- positions34(Obj), !.
object13(Obj) :- array20(Obj), !.
object13(Obj) :- value15(Obj), !.
array21([Arg0]) :- object13(Arg0).
position47(['uast:Position', 13, 11, 355]).
position48(['uast:Position', 40, 11, 382]).
positions35(['uast:Positions', Start, End]) :- position47(Start), position48(End).
array22([Arg0,Arg1]) :- value10(Arg0),value11(Arg1).
position49(['uast:Position', 16, 11, 358]).
position50(['uast:Position', 23, 11, 365]).
positions36(['uast:Positions', Start, End]) :- position49(Start), position50(End).
identifier12(['uast:Identifier', 'println', Pos, [Role0]]) :- positions36(Pos),role0(Role0).
position51(['uast:Position', 15, 11, 357]).
positions37(['uast:Positions', Start, End]) :- position47(Start), position51(End).
identifier13(['uast:Identifier', 'pw', Pos, [Role0]]) :- positions37(Pos),role0(Role0).
object14(Obj) :- value12(Obj), !.
object14(Obj) :- identifier12(Obj), !.
object14(Obj) :- identifier13(Obj), !.
object14(Obj) :- array21(Obj), !.
object14(Obj) :- positions35(Obj), !.
object14(Obj) :- array22(Obj), !.
position52(['uast:Position', 41, 11, 383]).
positions38(['uast:Positions', Start, End]) :- position47(Start), position52(End).
array23([Arg0]) :- value18(Arg0).
object15(Obj) :- value9(Obj), !.
object15(Obj) :- object14(Obj), !.
object15(Obj) :- positions38(Obj), !.
object15(Obj) :- array23(Obj), !.
block0(['uast:Block', [Stmt0], Pos]) :- positions33(Pos),object15(Stmt0).
position53(['uast:Position', 19, 12, 402]).
positions39(['uast:Positions', Start, End]) :- position53(Start), position42(End).
position54(['uast:Position', 13, 13, 416]).
position55(['uast:Position', 24, 13, 427]).
positions40(['uast:Positions', Start, End]) :- position54(Start), position55(End).
array24([Arg0]) :- value18(Arg0).
position56(['uast:Position', 23, 13, 426]).
positions41(['uast:Positions', Start, End]) :- position54(Start), position56(End).
array25([Arg0,Arg1]) :- value10(Arg0),value11(Arg1).
position57(['uast:Position', 16, 13, 419]).
position58(['uast:Position', 21, 13, 424]).
positions42(['uast:Positions', Start, End]) :- position57(Start), position58(End).
identifier14(['uast:Identifier', 'close', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
position59(['uast:Position', 15, 13, 418]).
positions43(['uast:Positions', Start, End]) :- position54(Start), position59(End).
identifier15(['uast:Identifier', 'pw', Pos, [Role0]]) :- positions43(Pos),role0(Role0).
object16(Obj) :- positions41(Obj), !.
object16(Obj) :- array25(Obj), !.
object16(Obj) :- value12(Obj), !.
object16(Obj) :- identifier14(Obj), !.
object16(Obj) :- identifier15(Obj), !.
object17(Obj) :- value9(Obj), !.
object17(Obj) :- object16(Obj), !.
object17(Obj) :- positions40(Obj), !.
object17(Obj) :- array24(Obj), !.
block1(['uast:Block', [Stmt0], Pos]) :- positions39(Pos),object17(Stmt0).
object18(Obj) :- positions32(Obj), !.
object18(Obj) :- array19(Obj), !.
object18(Obj) :- value25(Obj), !.
object18(Obj) :- block0(Obj), !.
object18(Obj) :- block1(Obj), !.
block2(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions17(Pos),object7(Stmt0),object12(Stmt1),object18(Stmt2).
positions44(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block2(Body),positions44(Pos).
position60(['uast:Position', 17, 6, 117]).
position61(['uast:Position', 24, 6, 124]).
positions45(['uast:Positions', Start, End]) :- position60(Start), position61(End).
identifier16(['uast:Identifier', 'service', Pos, [Role0]]) :- positions45(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier16(Name),function0(Node),positions7(Pos).
position62(['uast:Position', 12, 7, 198]).
position63(['uast:Position', 28, 7, 214]).
positions46(['uast:Positions', Start, End]) :- position62(Start), position63(End).
array26([Arg0]) :- value3(Arg0).
positions47(['uast:Positions', Start, End]) :- position62(Start), position63(End).
identifier17(['uast:Identifier', 'ServletException', Pos, [Role0]]) :- positions47(Pos),role0(Role0).
object19(Obj) :- positions46(Obj), !.
object19(Obj) :- array26(Obj), !.
object19(Obj) :- value8(Obj), !.
object19(Obj) :- identifier17(Obj), !.
position64(['uast:Position', 30, 7, 216]).
position65(['uast:Position', 41, 7, 227]).
positions48(['uast:Positions', Start, End]) :- position64(Start), position65(End).
array27([Arg0]) :- value3(Arg0).
positions49(['uast:Positions', Start, End]) :- position64(Start), position65(End).
identifier18(['uast:Identifier', 'IOException', Pos, [Role0]]) :- positions49(Pos),role0(Role0).
object20(Obj) :- array27(Obj), !.
object20(Obj) :- value8(Obj), !.
object20(Obj) :- identifier18(Obj), !.
object20(Obj) :- positions48(Obj), !.
array28([Arg0,Arg1]) :- object19(Arg0),object20(Arg1).
object21(Obj) :- value5(Obj), !.
object21(Obj) :- array28(Obj), !.
function_group0(['uast:FunctionGroup', [Node0,Node1,Node2], Pos]) :- positions5(Pos),array5(Node0),alias0(Node1),object21(Node2).
array29([Arg0]) :- function_group0(Arg0).
object22(Obj) :- array2(Obj), !.
object22(Obj) :- positions1(Obj), !.
object22(Obj) :- identifier0(Obj), !.
object22(Obj) :- object1(Obj), !.
object22(Obj) :- array29(Obj), !.
object22(Obj) :- array0(Obj), !.
object22(Obj) :- value4(Obj), !.
object22(Obj) :- value5(Obj), !.
array30([Arg0]) :- object22(Arg0).
position66(['uast:Position', 1, 1, 0]).
position67(['uast:Position', 1, 17, 446]).
positions50(['uast:Positions', Start, End]) :- position66(Start), position67(End).
value27('File').
array31([Arg0]) :- value27(Arg0).
value28('java:CompilationUnit').
position68(['uast:Position', 14, 1, 13]).
positions51(['uast:Positions', Start, End]) :- position66(Start), position68(End).
comment0(['uast:Comment', ' ', '', '', 'Hello.java', false, Pos]) :- positions51(Pos).
array32([Arg0]) :- comment0(Arg0).
position69(['uast:Position', 1, 2, 14]).
position70(['uast:Position', 18, 2, 31]).
positions52(['uast:Positions', Start, End]) :- position69(Start), position70(End).
position71(['uast:Position', 8, 2, 21]).
position72(['uast:Position', 15, 2, 28]).
positions53(['uast:Positions', Start, End]) :- position71(Start), position72(End).
position73(['uast:Position', 12, 2, 25]).
positions54(['uast:Positions', Start, End]) :- position71(Start), position73(End).
identifier19(['uast:Identifier', 'java', Pos, [Role0]]) :- positions54(Pos),role0(Role0).
position74(['uast:Position', 13, 2, 26]).
positions55(['uast:Positions', Start, End]) :- position74(Start), position72(End).
identifier20(['uast:Identifier', 'io', Pos, [Role0]]) :- positions55(Pos),role0(Role0).
qualified_identifier0(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions53(Pos),identifier19(Name0),identifier20(Name1).
import0(['uast:Import', Path, Pos]) :- qualified_identifier0(Path),positions52(Pos).
position75(['uast:Position', 1, 3, 32]).
position76(['uast:Position', 24, 3, 55]).
positions56(['uast:Positions', Start, End]) :- position75(Start), position76(End).
position77(['uast:Position', 8, 3, 39]).
position78(['uast:Position', 21, 3, 52]).
positions57(['uast:Positions', Start, End]) :- position77(Start), position78(End).
position79(['uast:Position', 13, 3, 44]).
positions58(['uast:Positions', Start, End]) :- position77(Start), position79(End).
identifier21(['uast:Identifier', 'javax', Pos, [Role0]]) :- positions58(Pos),role0(Role0).
position80(['uast:Position', 14, 3, 45]).
positions59(['uast:Positions', Start, End]) :- position80(Start), position78(End).
identifier22(['uast:Identifier', 'servlet', Pos, [Role0]]) :- positions59(Pos),role0(Role0).
qualified_identifier1(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions57(Pos),identifier21(Name0),identifier22(Name1).
import1(['uast:Import', Path, Pos]) :- qualified_identifier1(Path),positions56(Pos).
array33([Arg0,Arg1]) :- import0(Arg0),import1(Arg1).
object23(Obj) :- array30(Obj), !.
object23(Obj) :- positions50(Obj), !.
object23(Obj) :- array31(Obj), !.
object23(Obj) :- value28(Obj), !.
object23(Obj) :- array32(Obj), !.
object23(Obj) :- array33(Obj), !.

% value(Val).
value(X) :- value0(X);value1(X);value2(X);value3(X);value4(X);value5(X);value6(X);value7(X);value8(X);value9(X);value10(X);value11(X);value12(X);value13(X);value14(X);value15(X);value16(X);value17(X);value18(X);value19(X);value20(X);value21(X);value22(X);value23(X);value24(X);value25(X);value26(X);value27(X);value28(X).

% array([Arguments]).
array(X) :- array0(X);array1(X);array2(X);array3(X);array4(X);array5(X);array6(X);array7(X);array8(X);array9(X);array10(X);array11(X);array12(X);array13(X);array14(X);array15(X);array16(X);array17(X);array18(X);array19(X);array20(X);array21(X);array22(X);array23(X);array24(X);array25(X);array26(X);array27(X);array28(X);array29(X);array30(X);array31(X);array32(X);array33(X).

% object(Obj).
object(X) :- object0(X);object1(X);object2(X);object3(X);object4(X);object5(X);object6(X);object7(X);object8(X);object9(X);object10(X);object11(X);object12(X);object13(X);object14(X);object15(X);object16(X);object17(X);object18(X);object19(X);object20(X);object21(X);object22(X);object23(X).

% role(Name).
role(X) :- role0(X).

% position([Type, Col, Line, Offset]).
position(X) :- position0(X);position1(X);position2(X);position3(X);position4(X);position5(X);position6(X);position7(X);position8(X);position9(X);position10(X);position11(X);position12(X);position13(X);position14(X);position15(X);position16(X);position17(X);position18(X);position19(X);position20(X);position21(X);position22(X);position23(X);position24(X);position25(X);position26(X);position27(X);position28(X);position29(X);position30(X);position31(X);position32(X);position33(X);position34(X);position35(X);position36(X);position37(X);position38(X);position39(X);position40(X);position41(X);position42(X);position43(X);position44(X);position45(X);position46(X);position47(X);position48(X);position49(X);position50(X);position51(X);position52(X);position53(X);position54(X);position55(X);position56(X);position57(X);position58(X);position59(X);position60(X);position61(X);position62(X);position63(X);position64(X);position65(X);position66(X);position67(X);position68(X);position69(X);position70(X);position71(X);position72(X);position73(X);position74(X);position75(X);position76(X);position77(X);position78(X);position79(X);position80(X).

% positions([Type, Start, End]).
positions(X) :- positions0(X);positions1(X);positions2(X);positions3(X);positions4(X);positions5(X);positions6(X);positions7(X);positions8(X);positions9(X);positions10(X);positions11(X);positions12(X);positions13(X);positions14(X);positions15(X);positions16(X);positions17(X);positions18(X);positions19(X);positions20(X);positions21(X);positions22(X);positions23(X);positions24(X);positions25(X);positions26(X);positions27(X);positions28(X);positions29(X);positions30(X);positions31(X);positions32(X);positions33(X);positions34(X);positions35(X);positions36(X);positions37(X);positions38(X);positions39(X);positions40(X);positions41(X);positions42(X);positions43(X);positions44(X);positions45(X);positions46(X);positions47(X);positions48(X);positions49(X);positions50(X);positions51(X);positions52(X);positions53(X);positions54(X);positions55(X);positions56(X);positions57(X);positions58(X);positions59(X).

% identifier([Type, Name, Pos, [Roles]]).
identifier(X) :- identifier0(X);identifier1(X);identifier2(X);identifier3(X);identifier4(X);identifier5(X);identifier6(X);identifier7(X);identifier8(X);identifier9(X);identifier10(X);identifier11(X);identifier12(X);identifier13(X);identifier14(X);identifier15(X);identifier16(X);identifier17(X);identifier18(X);identifier19(X);identifier20(X);identifier21(X);identifier22(X).

% qualified_identifier([Type, [Names], Pos]).
qualified_identifier(X) :- qualified_identifier0(X);qualified_identifier1(X).

% comment([Type, Prefix, Suffix, Tab, Text, Block, Pos]).
comment(X) :- comment0(X).

% group([Type, [Nodes], Pos]).
group(_) :- fail.

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X);block1(X);block2(X).

% alias([Type, Name, Node, Pos]).
alias(X) :- alias0(X).

% import([Type, Path, Pos]).
import(X) :- import0(X);import1(X).

% runtime_import([Type, Path, Pos]).
runtime_import(_) :- fail.

% runtime_reimport([Type, Path, Pos]).
runtime_reimport(_) :- fail.

% inline_import([Type, Path, Pos]).
inline_import(_) :- fail.

% argument([Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]).
argument(X) :- argument0(X);argument1(X).

% function_type([Type, [Arguments], [Returns], Pos]).
function_type(X) :- function_type0(X).

% function([Type, FuncType, Body, Pos]).
function(X) :- function0(X).
