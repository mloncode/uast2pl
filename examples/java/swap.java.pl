value0('java:TypeDeclaration').
value1('false').
position0(['uast:Position', 1, 1, 0]).
position1(['uast:Position', 7, 1, 6]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
value2('Visibility').
value3('World').
array0([Arg0,Arg1]) :- value2(Arg0),value3(Arg1).
value4('java:Modifier').
value5('public').
object0(Obj) :- !,positions0(Obj);array0(Obj);value4(Obj);value5(Obj).
array1([Arg0]) :- object0(Arg0).
position2(['uast:Position', 3, 27, 773]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position2(End).
value6('Declaration').
value7('Type').
array2([Arg0,Arg1,Arg2,Arg3]) :- value2(Arg0),value3(Arg1),value6(Arg2),value7(Arg3).
position3(['uast:Position', 10, 3, 45]).
position4(['uast:Position', 11, 14, 419]).
positions2(['uast:Positions', Start, End]) :- position3(Start), position4(End).
position5(['uast:Position', 16, 3, 51]).
positions3(['uast:Positions', Start, End]) :- position3(Start), position5(End).
array3([Arg0,Arg1]) :- value2(Arg0),value3(Arg1).
object1(Obj) :- !,positions3(Obj);array3(Obj);value4(Obj);value5(Obj).
position6(['uast:Position', 17, 3, 52]).
position7(['uast:Position', 23, 3, 58]).
positions4(['uast:Positions', Start, End]) :- position6(Start), position7(End).
value8('Incomplete').
array4([Arg0]) :- value8(Arg0).
value9('static').
object2(Obj) :- !,positions4(Obj);array4(Obj);value4(Obj);value9(Obj).
array5([Arg0,Arg1]) :- object1(Arg0),object2(Arg1).
positions5(['uast:Positions', _, _]).
positions6(['uast:Positions', _, _]).
position8(['uast:Position', 43, 3, 78]).
position9(['uast:Position', 47, 3, 82]).
positions7(['uast:Positions', Start, End]) :- position8(Start), position9(End).
role0('Identifier').
identifier0(['uast:Identifier', 'args', Pos, [Role0]]) :- positions7(Pos),role0(Role0).
array6([Arg0,Arg1]) :- value7(Arg0),value8(Arg1).
value10('java:Dimension').
position10(['uast:Position', 40, 3, 75]).
position11(['uast:Position', 42, 3, 77]).
positions8(['uast:Positions', Start, End]) :- position10(Start), position11(End).
object3(Obj) :- !,array6(Obj);value10(Obj);positions8(Obj).
array7([Arg0]) :- object3(Arg0).
position12(['uast:Position', 34, 3, 69]).
positions9(['uast:Positions', Start, End]) :- position12(Start), position10(End).
array8([Arg0]) :- value7(Arg0).
value11('java:SimpleType').
positions10(['uast:Positions', Start, End]) :- position12(Start), position10(End).
identifier1(['uast:Identifier', 'String', Pos, [Role0]]) :- positions10(Pos),role0(Role0).
object4(Obj) :- !,positions9(Obj);array8(Obj);value11(Obj);identifier1(Obj).
positions11(['uast:Positions', Start, End]) :- position12(Start), position11(End).
value12('Primitive').
value13('List').
array9([Arg0,Arg1,Arg2]) :- value7(Arg0),value12(Arg1),value13(Arg2).
value14('java:ArrayType').
object5(Obj) :- !,array7(Obj);object4(Obj);positions11(Obj);array9(Obj);value14(Obj).
positions12(['uast:Positions', Start, End]) :- position12(Start), position9(End).
argument0(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier0(Name),object5(Type),positions12(Pos).
function_type0(['uast:FunctionType', [Arg0], [], Pos]) :- argument0(Arg0),positions6(Pos).
position13(['uast:Position', 49, 3, 84]).
positions13(['uast:Positions', Start, End]) :- position13(Start), position4(End).
position14(['uast:Position', 18, 5, 104]).
position15(['uast:Position', 32, 5, 118]).
positions14(['uast:Positions', Start, End]) :- position14(Start), position15(End).
value15('Statement').
value16('Variable').
array10([Arg0,Arg1,Arg2]) :- value15(Arg0),value6(Arg1),value16(Arg2).
value17('java:VariableDeclarationStatement').
value18('java:VariableDeclarationFragment').
position16(['uast:Position', 22, 5, 108]).
position17(['uast:Position', 26, 5, 112]).
positions15(['uast:Positions', Start, End]) :- position16(Start), position17(End).
identifier2(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions15(Pos),role0(Role0).
position18(['uast:Position', 29, 5, 115]).
position19(['uast:Position', 31, 5, 117]).
positions16(['uast:Positions', Start, End]) :- position18(Start), position19(End).
value19('Expression').
value20('Literal').
value21('Number').
array11([Arg0,Arg1,Arg2]) :- value19(Arg0),value20(Arg1),value21(Arg2).
value22('java:NumberLiteral').
value23('10').
object6(Obj) :- !,positions16(Obj);array11(Obj);value22(Obj);value23(Obj).
positions17(['uast:Positions', Start, End]) :- position16(Start), position19(End).
array12([Arg0,Arg1]) :- value6(Arg0),value16(Arg1).
object7(Obj) :- !,value18(Obj);identifier2(Obj);object6(Obj);positions17(Obj);array12(Obj).
array13([Arg0]) :- object7(Arg0).
position20(['uast:Position', 21, 5, 107]).
positions18(['uast:Positions', Start, End]) :- position14(Start), position20(End).
array14([Arg0,Arg1,Arg2]) :- value21(Arg0),value7(Arg1),value12(Arg2).
value24('java:PrimitiveType').
value25('int').
object8(Obj) :- !,positions18(Obj);array14(Obj);value24(Obj);value25(Obj).
object9(Obj) :- !,positions14(Obj);array10(Obj);value17(Obj);array13(Obj);object8(Obj).
position21(['uast:Position', 18, 6, 136]).
position22(['uast:Position', 32, 6, 150]).
positions19(['uast:Positions', Start, End]) :- position21(Start), position22(End).
array15([Arg0,Arg1,Arg2]) :- value15(Arg0),value6(Arg1),value16(Arg2).
position23(['uast:Position', 22, 6, 140]).
position24(['uast:Position', 26, 6, 144]).
positions20(['uast:Positions', Start, End]) :- position23(Start), position24(End).
identifier3(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions20(Pos),role0(Role0).
position25(['uast:Position', 29, 6, 147]).
position26(['uast:Position', 31, 6, 149]).
positions21(['uast:Positions', Start, End]) :- position25(Start), position26(End).
array16([Arg0,Arg1,Arg2]) :- value19(Arg0),value20(Arg1),value21(Arg2).
value26('20').
object10(Obj) :- !,positions21(Obj);array16(Obj);value22(Obj);value26(Obj).
positions22(['uast:Positions', Start, End]) :- position23(Start), position26(End).
array17([Arg0,Arg1]) :- value6(Arg0),value16(Arg1).
object11(Obj) :- !,identifier3(Obj);object10(Obj);positions22(Obj);array17(Obj);value18(Obj).
array18([Arg0]) :- object11(Arg0).
position27(['uast:Position', 21, 6, 139]).
positions23(['uast:Positions', Start, End]) :- position21(Start), position27(End).
array19([Arg0,Arg1,Arg2]) :- value21(Arg0),value7(Arg1),value12(Arg2).
object12(Obj) :- !,positions23(Obj);array19(Obj);value24(Obj);value25(Obj).
object13(Obj) :- !,positions19(Obj);array15(Obj);value17(Obj);array18(Obj);object12(Obj).
position28(['uast:Position', 18, 8, 169]).
position29(['uast:Position', 56, 8, 207]).
positions24(['uast:Positions', Start, End]) :- position28(Start), position29(End).
array20([Arg0]) :- value15(Arg0).
value27('java:ExpressionStatement').
position30(['uast:Position', 55, 8, 206]).
positions25(['uast:Positions', Start, End]) :- position28(Start), position30(End).
value28('Call').
array21([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
value29('java:MethodInvocation').
position31(['uast:Position', 29, 8, 180]).
position32(['uast:Position', 36, 8, 187]).
positions26(['uast:Positions', Start, End]) :- position31(Start), position32(End).
identifier4(['uast:Identifier', 'println', Pos, [Role0]]) :- positions26(Pos),role0(Role0).
position33(['uast:Position', 28, 8, 179]).
positions27(['uast:Positions', Start, End]) :- position28(Start), position33(End).
position34(['uast:Position', 24, 8, 175]).
positions28(['uast:Positions', Start, End]) :- position28(Start), position34(End).
identifier5(['uast:Identifier', 'System', Pos, [Role0]]) :- positions28(Pos),role0(Role0).
position35(['uast:Position', 25, 8, 176]).
positions29(['uast:Positions', Start, End]) :- position35(Start), position33(End).
identifier6(['uast:Identifier', 'out', Pos, [Role0]]) :- positions29(Pos),role0(Role0).
qualified_identifier0(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions27(Pos),identifier5(Name0),identifier6(Name1).
value30('').
value31('Before Swapping').
position36(['uast:Position', 37, 8, 188]).
position37(['uast:Position', 54, 8, 205]).
positions30(['uast:Positions', Start, End]) :- position36(Start), position37(End).
value32('Argument').
value33('Positional').
array22([Arg0,Arg1,Arg2]) :- value28(Arg0),value32(Arg1),value33(Arg2).
value34('uast:String').
object14(Obj) :- !,value30(Obj);value31(Obj);positions30(Obj);array22(Obj);value34(Obj).
array23([Arg0]) :- object14(Arg0).
object15(Obj) :- !,positions25(Obj);array21(Obj);value29(Obj);identifier4(Obj);qualified_identifier0(Obj);array23(Obj).
object16(Obj) :- !,positions24(Obj);array20(Obj);value27(Obj);object15(Obj).
array24([Arg0]) :- value15(Arg0).
position38(['uast:Position', 29, 9, 236]).
position39(['uast:Position', 36, 9, 243]).
positions31(['uast:Positions', Start, End]) :- position38(Start), position39(End).
identifier7(['uast:Identifier', 'println', Pos, [Role0]]) :- positions31(Pos),role0(Role0).
position40(['uast:Position', 18, 9, 225]).
position41(['uast:Position', 28, 9, 235]).
positions32(['uast:Positions', Start, End]) :- position40(Start), position41(End).
position42(['uast:Position', 24, 9, 231]).
positions33(['uast:Positions', Start, End]) :- position40(Start), position42(End).
identifier8(['uast:Identifier', 'System', Pos, [Role0]]) :- positions33(Pos),role0(Role0).
position43(['uast:Position', 25, 9, 232]).
positions34(['uast:Positions', Start, End]) :- position43(Start), position41(End).
identifier9(['uast:Identifier', 'out', Pos, [Role0]]) :- positions34(Pos),role0(Role0).
qualified_identifier1(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions32(Pos),identifier8(Name0),identifier9(Name1).
value35('java:InfixExpression').
value36('Value of num1 is :').
position44(['uast:Position', 37, 9, 244]).
position45(['uast:Position', 57, 9, 264]).
positions35(['uast:Positions', Start, End]) :- position44(Start), position45(End).
value37('Binary').
value38('Left').
array25([Arg0,Arg1,Arg2]) :- value19(Arg0),value37(Arg1),value38(Arg2).
object17(Obj) :- !,value36(Obj);positions35(Obj);array25(Obj);value34(Obj);value30(Obj).
value39('+').
value40('Arithmetic').
value41('Add').
value42('Operator').
array26([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value40(Arg0),value41(Arg1),value19(Arg2),value42(Arg3),value37(Arg4).
value43('uast:Operator').
object18(Obj) :- !,value39(Obj);array26(Obj);value43(Obj).
position46(['uast:Position', 60, 9, 267]).
position47(['uast:Position', 64, 9, 271]).
positions36(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier10(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions36(Pos),role0(Role0).
positions37(['uast:Positions', Start, End]) :- position44(Start), position47(End).
array27([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value40(Arg0),value41(Arg1),value19(Arg2),value37(Arg3),value42(Arg4),value28(Arg5),value32(Arg6),value33(Arg7).
object19(Obj) :- !,value35(Obj);object17(Obj);object18(Obj);identifier10(Obj);positions37(Obj);array27(Obj).
array28([Arg0]) :- object19(Arg0).
position48(['uast:Position', 65, 9, 272]).
positions38(['uast:Positions', Start, End]) :- position40(Start), position48(End).
array29([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
object20(Obj) :- !,value29(Obj);identifier7(Obj);qualified_identifier1(Obj);array28(Obj);positions38(Obj);array29(Obj).
position49(['uast:Position', 66, 9, 273]).
positions39(['uast:Positions', Start, End]) :- position40(Start), position49(End).
object21(Obj) :- !,array24(Obj);value27(Obj);object20(Obj);positions39(Obj).
array30([Arg0]) :- value15(Arg0).
array31([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
position50(['uast:Position', 29, 10, 302]).
position51(['uast:Position', 36, 10, 309]).
positions40(['uast:Positions', Start, End]) :- position50(Start), position51(End).
identifier11(['uast:Identifier', 'println', Pos, [Role0]]) :- positions40(Pos),role0(Role0).
position52(['uast:Position', 18, 10, 291]).
position53(['uast:Position', 28, 10, 301]).
positions41(['uast:Positions', Start, End]) :- position52(Start), position53(End).
position54(['uast:Position', 24, 10, 297]).
positions42(['uast:Positions', Start, End]) :- position52(Start), position54(End).
identifier12(['uast:Identifier', 'System', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
position55(['uast:Position', 25, 10, 298]).
positions43(['uast:Positions', Start, End]) :- position55(Start), position53(End).
identifier13(['uast:Identifier', 'out', Pos, [Role0]]) :- positions43(Pos),role0(Role0).
qualified_identifier2(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions41(Pos),identifier12(Name0),identifier13(Name1).
array32([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value40(Arg0),value41(Arg1),value19(Arg2),value42(Arg3),value37(Arg4).
object22(Obj) :- !,array32(Obj);value43(Obj);value39(Obj).
position56(['uast:Position', 59, 10, 332]).
position57(['uast:Position', 63, 10, 336]).
positions44(['uast:Positions', Start, End]) :- position56(Start), position57(End).
identifier14(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions44(Pos),role0(Role0).
position58(['uast:Position', 37, 10, 310]).
positions45(['uast:Positions', Start, End]) :- position58(Start), position57(End).
array33([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value40(Arg0),value41(Arg1),value19(Arg2),value37(Arg3),value42(Arg4),value28(Arg5),value32(Arg6),value33(Arg7).
position59(['uast:Position', 57, 10, 330]).
positions46(['uast:Positions', Start, End]) :- position58(Start), position59(End).
array34([Arg0,Arg1,Arg2]) :- value19(Arg0),value37(Arg1),value38(Arg2).
value44('Value of num2 is :').
object23(Obj) :- !,positions46(Obj);array34(Obj);value34(Obj);value30(Obj);value44(Obj).
object24(Obj) :- !,object22(Obj);identifier14(Obj);positions45(Obj);array33(Obj);value35(Obj);object23(Obj).
array35([Arg0]) :- object24(Arg0).
position60(['uast:Position', 64, 10, 337]).
positions47(['uast:Positions', Start, End]) :- position52(Start), position60(End).
object25(Obj) :- !,array31(Obj);value29(Obj);identifier11(Obj);qualified_identifier2(Obj);array35(Obj);positions47(Obj).
position61(['uast:Position', 65, 10, 338]).
positions48(['uast:Positions', Start, End]) :- position52(Start), position61(End).
object26(Obj) :- !,array30(Obj);value27(Obj);object25(Obj);positions48(Obj).
position62(['uast:Position', 18, 13, 391]).
position63(['uast:Position', 35, 13, 408]).
positions49(['uast:Positions', Start, End]) :- position62(Start), position63(End).
array36([Arg0]) :- value15(Arg0).
position64(['uast:Position', 34, 13, 407]).
positions50(['uast:Positions', Start, End]) :- position62(Start), position64(End).
array37([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
position65(['uast:Position', 22, 13, 395]).
positions51(['uast:Positions', Start, End]) :- position62(Start), position65(End).
identifier15(['uast:Identifier', 'swap', Pos, [Role0]]) :- positions51(Pos),role0(Role0).
position66(['uast:Position', 23, 13, 396]).
position67(['uast:Position', 27, 13, 400]).
positions52(['uast:Positions', Start, End]) :- position66(Start), position67(End).
identifier16(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions52(Pos),role0(Role0).
position68(['uast:Position', 29, 13, 402]).
position69(['uast:Position', 33, 13, 406]).
positions53(['uast:Positions', Start, End]) :- position68(Start), position69(End).
identifier17(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions53(Pos),role0(Role0).
array38([Arg0,Arg1]) :- identifier16(Arg0),identifier17(Arg1).
object27(Obj) :- !,positions50(Obj);array37(Obj);value29(Obj);identifier15(Obj);array38(Obj).
object28(Obj) :- !,positions49(Obj);array36(Obj);value27(Obj);object27(Obj).
block0(['uast:Block', [Stmt0,Stmt1,Stmt2,Stmt3,Stmt4,Stmt5], Pos]) :- positions13(Pos),object9(Stmt0),object13(Stmt1),object16(Stmt2),object21(Stmt3),object26(Stmt4),object28(Stmt5).
positions54(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions54(Pos).
position70(['uast:Position', 29, 3, 64]).
position71(['uast:Position', 33, 3, 68]).
positions55(['uast:Positions', Start, End]) :- position70(Start), position71(End).
identifier18(['uast:Identifier', 'main', Pos, [Role0]]) :- positions55(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier18(Name),function0(Node),positions5(Pos).
object29(Obj) :- !,value1(Obj).
function_group0(['uast:FunctionGroup', [Node0,Node1,Node2], Pos]) :- positions2(Pos),array5(Node0),alias0(Node1),object29(Node2).
position72(['uast:Position', 10, 16, 430]).
position73(['uast:Position', 11, 26, 770]).
positions56(['uast:Positions', Start, End]) :- position72(Start), position73(End).
position74(['uast:Position', 17, 16, 437]).
positions57(['uast:Positions', Start, End]) :- position72(Start), position74(End).
value45('Instance').
array39([Arg0,Arg1]) :- value2(Arg0),value45(Arg1).
value46('private').
object30(Obj) :- !,positions57(Obj);array39(Obj);value4(Obj);value46(Obj).
position75(['uast:Position', 18, 16, 438]).
position76(['uast:Position', 24, 16, 444]).
positions58(['uast:Positions', Start, End]) :- position75(Start), position76(End).
array40([Arg0]) :- value8(Arg0).
object31(Obj) :- !,positions58(Obj);array40(Obj);value4(Obj);value9(Obj).
array41([Arg0,Arg1]) :- object30(Arg0),object31(Arg1).
positions59(['uast:Positions', _, _]).
positions60(['uast:Positions', _, _]).
position77(['uast:Position', 39, 16, 459]).
position78(['uast:Position', 43, 16, 463]).
positions61(['uast:Positions', Start, End]) :- position77(Start), position78(End).
identifier19(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions61(Pos),role0(Role0).
position79(['uast:Position', 35, 16, 455]).
position80(['uast:Position', 38, 16, 458]).
positions62(['uast:Positions', Start, End]) :- position79(Start), position80(End).
array42([Arg0,Arg1,Arg2]) :- value21(Arg0),value7(Arg1),value12(Arg2).
object32(Obj) :- !,positions62(Obj);array42(Obj);value24(Obj);value25(Obj).
positions63(['uast:Positions', Start, End]) :- position79(Start), position78(End).
argument1(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier19(Name),object32(Type),positions63(Pos).
position81(['uast:Position', 49, 16, 469]).
position82(['uast:Position', 53, 16, 473]).
positions64(['uast:Positions', Start, End]) :- position81(Start), position82(End).
identifier20(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions64(Pos),role0(Role0).
position83(['uast:Position', 45, 16, 465]).
position84(['uast:Position', 48, 16, 468]).
positions65(['uast:Positions', Start, End]) :- position83(Start), position84(End).
array43([Arg0,Arg1,Arg2]) :- value21(Arg0),value7(Arg1),value12(Arg2).
object33(Obj) :- !,value25(Obj);positions65(Obj);array43(Obj);value24(Obj).
positions66(['uast:Positions', Start, End]) :- position83(Start), position82(End).
argument2(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier20(Name),object33(Type),positions66(Pos).
function_type1(['uast:FunctionType', [Arg0,Arg1], [], Pos]) :- argument1(Arg0),argument2(Arg1),positions60(Pos).
position85(['uast:Position', 55, 16, 475]).
positions67(['uast:Positions', Start, End]) :- position85(Start), position73(End).
position86(['uast:Position', 18, 18, 495]).
position87(['uast:Position', 34, 18, 511]).
positions68(['uast:Positions', Start, End]) :- position86(Start), position87(End).
array44([Arg0,Arg1,Arg2]) :- value15(Arg0),value6(Arg1),value16(Arg2).
position88(['uast:Position', 22, 18, 499]).
position89(['uast:Position', 33, 18, 510]).
positions69(['uast:Positions', Start, End]) :- position88(Start), position89(End).
array45([Arg0,Arg1]) :- value6(Arg0),value16(Arg1).
position90(['uast:Position', 26, 18, 503]).
positions70(['uast:Positions', Start, End]) :- position88(Start), position90(End).
identifier21(['uast:Identifier', 'temp', Pos, [Role0]]) :- positions70(Pos),role0(Role0).
position91(['uast:Position', 29, 18, 506]).
positions71(['uast:Positions', Start, End]) :- position91(Start), position89(End).
identifier22(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions71(Pos),role0(Role0).
object34(Obj) :- !,positions69(Obj);array45(Obj);value18(Obj);identifier21(Obj);identifier22(Obj).
array46([Arg0]) :- object34(Arg0).
position92(['uast:Position', 21, 18, 498]).
positions72(['uast:Positions', Start, End]) :- position86(Start), position92(End).
array47([Arg0,Arg1,Arg2]) :- value21(Arg0),value7(Arg1),value12(Arg2).
object35(Obj) :- !,value24(Obj);value25(Obj);positions72(Obj);array47(Obj).
object36(Obj) :- !,positions68(Obj);array44(Obj);value17(Obj);array46(Obj);object35(Obj).
position93(['uast:Position', 18, 19, 529]).
position94(['uast:Position', 29, 19, 540]).
positions73(['uast:Positions', Start, End]) :- position93(Start), position94(End).
value47('Assignment').
array48([Arg0,Arg1,Arg2,Arg3]) :- value19(Arg0),value47(Arg1),value42(Arg2),value37(Arg3).
value48('java:Assignment').
array49([Arg0,Arg1,Arg2,Arg3]) :- value19(Arg0),value42(Arg1),value47(Arg2),value37(Arg3).
value49('=').
object37(Obj) :- !,array49(Obj);value43(Obj);value49(Obj).
position95(['uast:Position', 22, 19, 533]).
positions74(['uast:Positions', Start, End]) :- position93(Start), position95(End).
identifier23(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions74(Pos),role0(Role0).
position96(['uast:Position', 25, 19, 536]).
positions75(['uast:Positions', Start, End]) :- position96(Start), position94(End).
identifier24(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions75(Pos),role0(Role0).
object38(Obj) :- !,positions73(Obj);array48(Obj);value48(Obj);object37(Obj);identifier23(Obj);identifier24(Obj).
position97(['uast:Position', 30, 19, 541]).
positions76(['uast:Positions', Start, End]) :- position93(Start), position97(End).
array50([Arg0]) :- value15(Arg0).
object39(Obj) :- !,value27(Obj);object38(Obj);positions76(Obj);array50(Obj).
position98(['uast:Position', 18, 20, 559]).
position99(['uast:Position', 22, 20, 563]).
positions77(['uast:Positions', Start, End]) :- position98(Start), position99(End).
identifier25(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions77(Pos),role0(Role0).
position100(['uast:Position', 25, 20, 566]).
position101(['uast:Position', 29, 20, 570]).
positions78(['uast:Positions', Start, End]) :- position100(Start), position101(End).
identifier26(['uast:Identifier', 'temp', Pos, [Role0]]) :- positions78(Pos),role0(Role0).
positions79(['uast:Positions', Start, End]) :- position98(Start), position101(End).
array51([Arg0,Arg1,Arg2,Arg3]) :- value19(Arg0),value47(Arg1),value42(Arg2),value37(Arg3).
array52([Arg0,Arg1,Arg2,Arg3]) :- value19(Arg0),value42(Arg1),value47(Arg2),value37(Arg3).
object40(Obj) :- !,array52(Obj);value43(Obj);value49(Obj).
object41(Obj) :- !,identifier25(Obj);identifier26(Obj);positions79(Obj);array51(Obj);value48(Obj);object40(Obj).
position102(['uast:Position', 30, 20, 571]).
positions80(['uast:Positions', Start, End]) :- position98(Start), position102(End).
array53([Arg0]) :- value15(Arg0).
object42(Obj) :- !,object41(Obj);positions80(Obj);array53(Obj);value27(Obj).
position103(['uast:Position', 18, 22, 590]).
position104(['uast:Position', 55, 22, 627]).
positions81(['uast:Positions', Start, End]) :- position103(Start), position104(End).
array54([Arg0]) :- value15(Arg0).
position105(['uast:Position', 54, 22, 626]).
positions82(['uast:Positions', Start, End]) :- position103(Start), position105(End).
array55([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
position106(['uast:Position', 29, 22, 601]).
position107(['uast:Position', 36, 22, 608]).
positions83(['uast:Positions', Start, End]) :- position106(Start), position107(End).
identifier27(['uast:Identifier', 'println', Pos, [Role0]]) :- positions83(Pos),role0(Role0).
position108(['uast:Position', 28, 22, 600]).
positions84(['uast:Positions', Start, End]) :- position103(Start), position108(End).
position109(['uast:Position', 24, 22, 596]).
positions85(['uast:Positions', Start, End]) :- position103(Start), position109(End).
identifier28(['uast:Identifier', 'System', Pos, [Role0]]) :- positions85(Pos),role0(Role0).
position110(['uast:Position', 25, 22, 597]).
positions86(['uast:Positions', Start, End]) :- position110(Start), position108(End).
identifier29(['uast:Identifier', 'out', Pos, [Role0]]) :- positions86(Pos),role0(Role0).
qualified_identifier3(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions84(Pos),identifier28(Name0),identifier29(Name1).
position111(['uast:Position', 37, 22, 609]).
position112(['uast:Position', 53, 22, 625]).
positions87(['uast:Positions', Start, End]) :- position111(Start), position112(End).
array56([Arg0,Arg1,Arg2]) :- value28(Arg0),value32(Arg1),value33(Arg2).
value50('After Swapping').
object43(Obj) :- !,positions87(Obj);array56(Obj);value34(Obj);value30(Obj);value50(Obj).
array57([Arg0]) :- object43(Arg0).
object44(Obj) :- !,positions82(Obj);array55(Obj);value29(Obj);identifier27(Obj);qualified_identifier3(Obj);array57(Obj).
object45(Obj) :- !,positions81(Obj);array54(Obj);value27(Obj);object44(Obj).
position113(['uast:Position', 18, 23, 645]).
position114(['uast:Position', 66, 23, 693]).
positions88(['uast:Positions', Start, End]) :- position113(Start), position114(End).
array58([Arg0]) :- value15(Arg0).
position115(['uast:Position', 29, 23, 656]).
position116(['uast:Position', 36, 23, 663]).
positions89(['uast:Positions', Start, End]) :- position115(Start), position116(End).
identifier30(['uast:Identifier', 'println', Pos, [Role0]]) :- positions89(Pos),role0(Role0).
position117(['uast:Position', 28, 23, 655]).
positions90(['uast:Positions', Start, End]) :- position113(Start), position117(End).
position118(['uast:Position', 24, 23, 651]).
positions91(['uast:Positions', Start, End]) :- position113(Start), position118(End).
identifier31(['uast:Identifier', 'System', Pos, [Role0]]) :- positions91(Pos),role0(Role0).
position119(['uast:Position', 25, 23, 652]).
positions92(['uast:Positions', Start, End]) :- position119(Start), position117(End).
identifier32(['uast:Identifier', 'out', Pos, [Role0]]) :- positions92(Pos),role0(Role0).
qualified_identifier4(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions90(Pos),identifier31(Name0),identifier32(Name1).
position120(['uast:Position', 37, 23, 664]).
position121(['uast:Position', 57, 23, 684]).
positions93(['uast:Positions', Start, End]) :- position120(Start), position121(End).
array59([Arg0,Arg1,Arg2]) :- value19(Arg0),value37(Arg1),value38(Arg2).
object46(Obj) :- !,value30(Obj);value36(Obj);positions93(Obj);array59(Obj);value34(Obj).
array60([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value40(Arg0),value41(Arg1),value19(Arg2),value42(Arg3),value37(Arg4).
object47(Obj) :- !,array60(Obj);value43(Obj);value39(Obj).
position122(['uast:Position', 60, 23, 687]).
position123(['uast:Position', 64, 23, 691]).
positions94(['uast:Positions', Start, End]) :- position122(Start), position123(End).
identifier33(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions94(Pos),role0(Role0).
positions95(['uast:Positions', Start, End]) :- position120(Start), position123(End).
array61([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value40(Arg0),value41(Arg1),value19(Arg2),value37(Arg3),value42(Arg4),value28(Arg5),value32(Arg6),value33(Arg7).
object48(Obj) :- !,object46(Obj);object47(Obj);identifier33(Obj);positions95(Obj);array61(Obj);value35(Obj).
array62([Arg0]) :- object48(Arg0).
position124(['uast:Position', 65, 23, 692]).
positions96(['uast:Positions', Start, End]) :- position113(Start), position124(End).
array63([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
object49(Obj) :- !,value29(Obj);identifier30(Obj);qualified_identifier4(Obj);array62(Obj);positions96(Obj);array63(Obj).
object50(Obj) :- !,positions88(Obj);array58(Obj);value27(Obj);object49(Obj).
position125(['uast:Position', 18, 24, 711]).
position126(['uast:Position', 65, 24, 758]).
positions97(['uast:Positions', Start, End]) :- position125(Start), position126(End).
array64([Arg0]) :- value15(Arg0).
position127(['uast:Position', 64, 24, 757]).
positions98(['uast:Positions', Start, End]) :- position125(Start), position127(End).
array65([Arg0,Arg1]) :- value19(Arg0),value28(Arg1).
position128(['uast:Position', 29, 24, 722]).
position129(['uast:Position', 36, 24, 729]).
positions99(['uast:Positions', Start, End]) :- position128(Start), position129(End).
identifier34(['uast:Identifier', 'println', Pos, [Role0]]) :- positions99(Pos),role0(Role0).
position130(['uast:Position', 28, 24, 721]).
positions100(['uast:Positions', Start, End]) :- position125(Start), position130(End).
position131(['uast:Position', 24, 24, 717]).
positions101(['uast:Positions', Start, End]) :- position125(Start), position131(End).
identifier35(['uast:Identifier', 'System', Pos, [Role0]]) :- positions101(Pos),role0(Role0).
position132(['uast:Position', 25, 24, 718]).
positions102(['uast:Positions', Start, End]) :- position132(Start), position130(End).
identifier36(['uast:Identifier', 'out', Pos, [Role0]]) :- positions102(Pos),role0(Role0).
qualified_identifier5(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions100(Pos),identifier35(Name0),identifier36(Name1).
array66([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value40(Arg0),value41(Arg1),value19(Arg2),value37(Arg3),value42(Arg4),value28(Arg5),value32(Arg6),value33(Arg7).
position133(['uast:Position', 37, 24, 730]).
position134(['uast:Position', 57, 24, 750]).
positions103(['uast:Positions', Start, End]) :- position133(Start), position134(End).
array67([Arg0,Arg1,Arg2]) :- value19(Arg0),value37(Arg1),value38(Arg2).
object51(Obj) :- !,positions103(Obj);array67(Obj);value34(Obj);value30(Obj);value44(Obj).
array68([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value40(Arg0),value41(Arg1),value19(Arg2),value42(Arg3),value37(Arg4).
object52(Obj) :- !,value43(Obj);value39(Obj);array68(Obj).
position135(['uast:Position', 59, 24, 752]).
position136(['uast:Position', 63, 24, 756]).
positions104(['uast:Positions', Start, End]) :- position135(Start), position136(End).
identifier37(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions104(Pos),role0(Role0).
positions105(['uast:Positions', Start, End]) :- position133(Start), position136(End).
object53(Obj) :- !,array66(Obj);value35(Obj);object51(Obj);object52(Obj);identifier37(Obj);positions105(Obj).
array69([Arg0]) :- object53(Arg0).
object54(Obj) :- !,positions98(Obj);array65(Obj);value29(Obj);identifier34(Obj);qualified_identifier5(Obj);array69(Obj).
object55(Obj) :- !,positions97(Obj);array64(Obj);value27(Obj);object54(Obj).
block1(['uast:Block', [Stmt0,Stmt1,Stmt2,Stmt3,Stmt4,Stmt5], Pos]) :- positions67(Pos),object36(Stmt0),object39(Stmt1),object42(Stmt2),object45(Stmt3),object50(Stmt4),object55(Stmt5).
positions106(['uast:Positions', _, _]).
function1(['uast:Function', FnType, Body, Pos]) :- function_type1(FnType),block1(Body),positions106(Pos).
position137(['uast:Position', 30, 16, 450]).
position138(['uast:Position', 34, 16, 454]).
positions107(['uast:Positions', Start, End]) :- position137(Start), position138(End).
identifier38(['uast:Identifier', 'swap', Pos, [Role0]]) :- positions107(Pos),role0(Role0).
alias1(['uast:Alias', Name, Node, Pos]) :- identifier38(Name),function1(Node),positions59(Pos).
object56(Obj) :- !,value1(Obj).
function_group1(['uast:FunctionGroup', [Node0,Node1,Node2], Pos]) :- positions56(Pos),array41(Node0),alias1(Node1),object56(Node2).
array70([Arg0,Arg1]) :- function_group0(Arg0),function_group1(Arg1).
position139(['uast:Position', 14, 1, 13]).
position140(['uast:Position', 33, 1, 32]).
positions108(['uast:Positions', Start, End]) :- position139(Start), position140(End).
identifier39(['uast:Identifier', 'SwapElementsExample', Pos, [Role0]]) :- positions108(Pos),role0(Role0).
object57(Obj) :- !,value0(Obj);value1(Obj);array1(Obj);positions1(Obj);array2(Obj);array70(Obj);identifier39(Obj).
array71([Arg0]) :- object57(Arg0).
position141(['uast:Position', 1, 30, 776]).
positions109(['uast:Positions', Start, End]) :- position0(Start), position141(End).
value51('File').
array72([Arg0]) :- value51(Arg0).
value52('java:CompilationUnit').
position142(['uast:Position', 18, 12, 357]).
position143(['uast:Position', 34, 12, 373]).
positions110(['uast:Positions', Start, End]) :- position142(Start), position143(End).
comment0(['uast:Comment', '', '', '', 'swap the value', false, Pos]) :- positions110(Pos).
array73([Arg0]) :- comment0(Arg0).
object58(Obj) :- !,array71(Obj);positions109(Obj);array72(Obj);value52(Obj);array73(Obj).

% value(Val).
value(X) :- value0(X);value1(X);value2(X);value3(X);value4(X);value5(X);value6(X);value7(X);value8(X);value9(X);value10(X);value11(X);value12(X);value13(X);value14(X);value15(X);value16(X);value17(X);value18(X);value19(X);value20(X);value21(X);value22(X);value23(X);value24(X);value25(X);value26(X);value27(X);value28(X);value29(X);value30(X);value31(X);value32(X);value33(X);value34(X);value35(X);value36(X);value37(X);value38(X);value39(X);value40(X);value41(X);value42(X);value43(X);value44(X);value45(X);value46(X);value47(X);value48(X);value49(X);value50(X);value51(X);value52(X).

% array([Arguments]).
array(X) :- array0(X);array1(X);array2(X);array3(X);array4(X);array5(X);array6(X);array7(X);array8(X);array9(X);array10(X);array11(X);array12(X);array13(X);array14(X);array15(X);array16(X);array17(X);array18(X);array19(X);array20(X);array21(X);array22(X);array23(X);array24(X);array25(X);array26(X);array27(X);array28(X);array29(X);array30(X);array31(X);array32(X);array33(X);array34(X);array35(X);array36(X);array37(X);array38(X);array39(X);array40(X);array41(X);array42(X);array43(X);array44(X);array45(X);array46(X);array47(X);array48(X);array49(X);array50(X);array51(X);array52(X);array53(X);array54(X);array55(X);array56(X);array57(X);array58(X);array59(X);array60(X);array61(X);array62(X);array63(X);array64(X);array65(X);array66(X);array67(X);array68(X);array69(X);array70(X);array71(X);array72(X);array73(X).

% object(Obj).
object(X) :- object0(X);object1(X);object2(X);object3(X);object4(X);object5(X);object6(X);object7(X);object8(X);object9(X);object10(X);object11(X);object12(X);object13(X);object14(X);object15(X);object16(X);object17(X);object18(X);object19(X);object20(X);object21(X);object22(X);object23(X);object24(X);object25(X);object26(X);object27(X);object28(X);object29(X);object30(X);object31(X);object32(X);object33(X);object34(X);object35(X);object36(X);object37(X);object38(X);object39(X);object40(X);object41(X);object42(X);object43(X);object44(X);object45(X);object46(X);object47(X);object48(X);object49(X);object50(X);object51(X);object52(X);object53(X);object54(X);object55(X);object56(X);object57(X);object58(X).

% role(Name).
role(X) :- role0(X).

% position([Type, Col, Line, Offset]).
position(X) :- position0(X);position1(X);position2(X);position3(X);position4(X);position5(X);position6(X);position7(X);position8(X);position9(X);position10(X);position11(X);position12(X);position13(X);position14(X);position15(X);position16(X);position17(X);position18(X);position19(X);position20(X);position21(X);position22(X);position23(X);position24(X);position25(X);position26(X);position27(X);position28(X);position29(X);position30(X);position31(X);position32(X);position33(X);position34(X);position35(X);position36(X);position37(X);position38(X);position39(X);position40(X);position41(X);position42(X);position43(X);position44(X);position45(X);position46(X);position47(X);position48(X);position49(X);position50(X);position51(X);position52(X);position53(X);position54(X);position55(X);position56(X);position57(X);position58(X);position59(X);position60(X);position61(X);position62(X);position63(X);position64(X);position65(X);position66(X);position67(X);position68(X);position69(X);position70(X);position71(X);position72(X);position73(X);position74(X);position75(X);position76(X);position77(X);position78(X);position79(X);position80(X);position81(X);position82(X);position83(X);position84(X);position85(X);position86(X);position87(X);position88(X);position89(X);position90(X);position91(X);position92(X);position93(X);position94(X);position95(X);position96(X);position97(X);position98(X);position99(X);position100(X);position101(X);position102(X);position103(X);position104(X);position105(X);position106(X);position107(X);position108(X);position109(X);position110(X);position111(X);position112(X);position113(X);position114(X);position115(X);position116(X);position117(X);position118(X);position119(X);position120(X);position121(X);position122(X);position123(X);position124(X);position125(X);position126(X);position127(X);position128(X);position129(X);position130(X);position131(X);position132(X);position133(X);position134(X);position135(X);position136(X);position137(X);position138(X);position139(X);position140(X);position141(X);position142(X);position143(X).

% positions([Type, Start, End]).
positions(X) :- positions0(X);positions1(X);positions2(X);positions3(X);positions4(X);positions5(X);positions6(X);positions7(X);positions8(X);positions9(X);positions10(X);positions11(X);positions12(X);positions13(X);positions14(X);positions15(X);positions16(X);positions17(X);positions18(X);positions19(X);positions20(X);positions21(X);positions22(X);positions23(X);positions24(X);positions25(X);positions26(X);positions27(X);positions28(X);positions29(X);positions30(X);positions31(X);positions32(X);positions33(X);positions34(X);positions35(X);positions36(X);positions37(X);positions38(X);positions39(X);positions40(X);positions41(X);positions42(X);positions43(X);positions44(X);positions45(X);positions46(X);positions47(X);positions48(X);positions49(X);positions50(X);positions51(X);positions52(X);positions53(X);positions54(X);positions55(X);positions56(X);positions57(X);positions58(X);positions59(X);positions60(X);positions61(X);positions62(X);positions63(X);positions64(X);positions65(X);positions66(X);positions67(X);positions68(X);positions69(X);positions70(X);positions71(X);positions72(X);positions73(X);positions74(X);positions75(X);positions76(X);positions77(X);positions78(X);positions79(X);positions80(X);positions81(X);positions82(X);positions83(X);positions84(X);positions85(X);positions86(X);positions87(X);positions88(X);positions89(X);positions90(X);positions91(X);positions92(X);positions93(X);positions94(X);positions95(X);positions96(X);positions97(X);positions98(X);positions99(X);positions100(X);positions101(X);positions102(X);positions103(X);positions104(X);positions105(X);positions106(X);positions107(X);positions108(X);positions109(X);positions110(X).

% identifier([Type, Name, Pos, [Roles]]).
identifier(X) :- identifier0(X);identifier1(X);identifier2(X);identifier3(X);identifier4(X);identifier5(X);identifier6(X);identifier7(X);identifier8(X);identifier9(X);identifier10(X);identifier11(X);identifier12(X);identifier13(X);identifier14(X);identifier15(X);identifier16(X);identifier17(X);identifier18(X);identifier19(X);identifier20(X);identifier21(X);identifier22(X);identifier23(X);identifier24(X);identifier25(X);identifier26(X);identifier27(X);identifier28(X);identifier29(X);identifier30(X);identifier31(X);identifier32(X);identifier33(X);identifier34(X);identifier35(X);identifier36(X);identifier37(X);identifier38(X);identifier39(X).

% qualified_identifier([Type, [Names], Pos]).
qualified_identifier(X) :- qualified_identifier0(X);qualified_identifier1(X);qualified_identifier2(X);qualified_identifier3(X);qualified_identifier4(X);qualified_identifier5(X).

% comment([Type, Prefix, Suffix, Tab, Text, Block, Pos]).
comment(X) :- comment0(X).

% group([Type, [Nodes], Pos]).
group(_) :- fail.

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X);function_group1(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X);block1(X).

% alias([Type, Name, Node, Pos]).
alias(X) :- alias0(X);alias1(X).

% import([Type, Path, Pos]).
import(_) :- fail.

% runtime_import([Type, Path, Pos]).
runtime_import(_) :- fail.

% runtime_reimport([Type, Path, Pos]).
runtime_reimport(_) :- fail.

% inline_import([Type, Path, Pos]).
inline_import(_) :- fail.

% argument([Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]).
argument(X) :- argument0(X);argument1(X);argument2(X).

% function_type([Type, [Arguments], [Returns], Pos]).
function_type(X) :- function_type0(X);function_type1(X).

% function([Type, FuncType, Body, Pos]).
function(X) :- function0(X);function1(X).
