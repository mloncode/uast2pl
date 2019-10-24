value0('java:TypeDeclaration').
position0(['uast:Position', 10, 3, 45]).
position1(['uast:Position', 11, 14, 419]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
position2(['uast:Position', 16, 3, 51]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position2(End).
value1('Visibility').
value2('World').
array0([Arg0,Arg1]) :- value1(Arg0),value2(Arg1).
value3('java:Modifier').
value4('public').
object0(Obj) :- value3(Obj), !.
object0(Obj) :- value4(Obj), !.
object0(Obj) :- positions1(Obj), !.
object0(Obj) :- array0(Obj), !.
value5('static').
position3(['uast:Position', 17, 3, 52]).
position4(['uast:Position', 23, 3, 58]).
positions2(['uast:Positions', Start, End]) :- position3(Start), position4(End).
value6('Incomplete').
array1([Arg0]) :- value6(Arg0).
object1(Obj) :- value5(Obj), !.
object1(Obj) :- positions2(Obj), !.
object1(Obj) :- array1(Obj), !.
object1(Obj) :- value3(Obj), !.
array2([Arg0,Arg1]) :- object0(Arg0),object1(Arg1).
positions3(['uast:Positions', _, _]).
positions4(['uast:Positions', _, _]).
position5(['uast:Position', 43, 3, 78]).
position6(['uast:Position', 47, 3, 82]).
positions5(['uast:Positions', Start, End]) :- position5(Start), position6(End).
role0('Identifier').
identifier0(['uast:Identifier', 'args', Pos, [Role0]]) :- positions5(Pos),role0(Role0).
position7(['uast:Position', 34, 3, 69]).
position8(['uast:Position', 42, 3, 77]).
positions6(['uast:Positions', Start, End]) :- position7(Start), position8(End).
value7('Type').
value8('Primitive').
value9('List').
array3([Arg0,Arg1,Arg2]) :- value7(Arg0),value8(Arg1),value9(Arg2).
value10('java:ArrayType').
position9(['uast:Position', 40, 3, 75]).
positions7(['uast:Positions', Start, End]) :- position9(Start), position8(End).
array4([Arg0,Arg1]) :- value7(Arg0),value6(Arg1).
value11('java:Dimension').
object2(Obj) :- positions7(Obj), !.
object2(Obj) :- array4(Obj), !.
object2(Obj) :- value11(Obj), !.
array5([Arg0]) :- object2(Arg0).
positions8(['uast:Positions', Start, End]) :- position7(Start), position9(End).
array6([Arg0]) :- value7(Arg0).
value12('java:SimpleType').
positions9(['uast:Positions', Start, End]) :- position7(Start), position9(End).
identifier1(['uast:Identifier', 'String', Pos, [Role0]]) :- positions9(Pos),role0(Role0).
object3(Obj) :- positions8(Obj), !.
object3(Obj) :- array6(Obj), !.
object3(Obj) :- value12(Obj), !.
object3(Obj) :- identifier1(Obj), !.
object4(Obj) :- positions6(Obj), !.
object4(Obj) :- array3(Obj), !.
object4(Obj) :- value10(Obj), !.
object4(Obj) :- array5(Obj), !.
object4(Obj) :- object3(Obj), !.
positions10(['uast:Positions', Start, End]) :- position7(Start), position6(End).
argument0(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier0(Name),object4(Type),positions10(Pos).
function_type0(['uast:FunctionType', [Arg0], [], Pos]) :- argument0(Arg0),positions4(Pos).
position10(['uast:Position', 49, 3, 84]).
positions11(['uast:Positions', Start, End]) :- position10(Start), position1(End).
position11(['uast:Position', 18, 5, 104]).
position12(['uast:Position', 32, 5, 118]).
positions12(['uast:Positions', Start, End]) :- position11(Start), position12(End).
value13('Statement').
value14('Declaration').
value15('Variable').
array7([Arg0,Arg1,Arg2]) :- value13(Arg0),value14(Arg1),value15(Arg2).
value16('java:VariableDeclarationStatement').
position13(['uast:Position', 29, 5, 115]).
position14(['uast:Position', 31, 5, 117]).
positions13(['uast:Positions', Start, End]) :- position13(Start), position14(End).
value17('Expression').
value18('Literal').
value19('Number').
array8([Arg0,Arg1,Arg2]) :- value17(Arg0),value18(Arg1),value19(Arg2).
value20('java:NumberLiteral').
value21('10').
object5(Obj) :- positions13(Obj), !.
object5(Obj) :- array8(Obj), !.
object5(Obj) :- value20(Obj), !.
object5(Obj) :- value21(Obj), !.
position15(['uast:Position', 22, 5, 108]).
positions14(['uast:Positions', Start, End]) :- position15(Start), position14(End).
array9([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
value22('java:VariableDeclarationFragment').
position16(['uast:Position', 26, 5, 112]).
positions15(['uast:Positions', Start, End]) :- position15(Start), position16(End).
identifier2(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions15(Pos),role0(Role0).
object6(Obj) :- array9(Obj), !.
object6(Obj) :- value22(Obj), !.
object6(Obj) :- identifier2(Obj), !.
object6(Obj) :- object5(Obj), !.
object6(Obj) :- positions14(Obj), !.
array10([Arg0]) :- object6(Arg0).
value23('int').
position17(['uast:Position', 21, 5, 107]).
positions16(['uast:Positions', Start, End]) :- position11(Start), position17(End).
array11([Arg0,Arg1,Arg2]) :- value19(Arg0),value7(Arg1),value8(Arg2).
value24('java:PrimitiveType').
object7(Obj) :- positions16(Obj), !.
object7(Obj) :- array11(Obj), !.
object7(Obj) :- value24(Obj), !.
object7(Obj) :- value23(Obj), !.
object8(Obj) :- positions12(Obj), !.
object8(Obj) :- array7(Obj), !.
object8(Obj) :- value16(Obj), !.
object8(Obj) :- array10(Obj), !.
object8(Obj) :- object7(Obj), !.
position18(['uast:Position', 18, 6, 136]).
position19(['uast:Position', 32, 6, 150]).
positions17(['uast:Positions', Start, End]) :- position18(Start), position19(End).
array12([Arg0,Arg1,Arg2]) :- value13(Arg0),value14(Arg1),value15(Arg2).
position20(['uast:Position', 22, 6, 140]).
position21(['uast:Position', 31, 6, 149]).
positions18(['uast:Positions', Start, End]) :- position20(Start), position21(End).
array13([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
position22(['uast:Position', 26, 6, 144]).
positions19(['uast:Positions', Start, End]) :- position20(Start), position22(End).
identifier3(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions19(Pos),role0(Role0).
array14([Arg0,Arg1,Arg2]) :- value17(Arg0),value18(Arg1),value19(Arg2).
value25('20').
position23(['uast:Position', 29, 6, 147]).
positions20(['uast:Positions', Start, End]) :- position23(Start), position21(End).
object9(Obj) :- positions20(Obj), !.
object9(Obj) :- array14(Obj), !.
object9(Obj) :- value20(Obj), !.
object9(Obj) :- value25(Obj), !.
object10(Obj) :- positions18(Obj), !.
object10(Obj) :- array13(Obj), !.
object10(Obj) :- value22(Obj), !.
object10(Obj) :- identifier3(Obj), !.
object10(Obj) :- object9(Obj), !.
array15([Arg0]) :- object10(Arg0).
position24(['uast:Position', 21, 6, 139]).
positions21(['uast:Positions', Start, End]) :- position18(Start), position24(End).
array16([Arg0,Arg1,Arg2]) :- value19(Arg0),value7(Arg1),value8(Arg2).
object11(Obj) :- positions21(Obj), !.
object11(Obj) :- array16(Obj), !.
object11(Obj) :- value24(Obj), !.
object11(Obj) :- value23(Obj), !.
object12(Obj) :- array15(Obj), !.
object12(Obj) :- object11(Obj), !.
object12(Obj) :- positions17(Obj), !.
object12(Obj) :- array12(Obj), !.
object12(Obj) :- value16(Obj), !.
position25(['uast:Position', 18, 8, 169]).
position26(['uast:Position', 56, 8, 207]).
positions22(['uast:Positions', Start, End]) :- position25(Start), position26(End).
array17([Arg0]) :- value13(Arg0).
value26('java:ExpressionStatement').
position27(['uast:Position', 55, 8, 206]).
positions23(['uast:Positions', Start, End]) :- position25(Start), position27(End).
value27('Call').
array18([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
value28('java:MethodInvocation').
position28(['uast:Position', 29, 8, 180]).
position29(['uast:Position', 36, 8, 187]).
positions24(['uast:Positions', Start, End]) :- position28(Start), position29(End).
identifier4(['uast:Identifier', 'println', Pos, [Role0]]) :- positions24(Pos),role0(Role0).
position30(['uast:Position', 28, 8, 179]).
positions25(['uast:Positions', Start, End]) :- position25(Start), position30(End).
position31(['uast:Position', 24, 8, 175]).
positions26(['uast:Positions', Start, End]) :- position25(Start), position31(End).
identifier5(['uast:Identifier', 'System', Pos, [Role0]]) :- positions26(Pos),role0(Role0).
position32(['uast:Position', 25, 8, 176]).
positions27(['uast:Positions', Start, End]) :- position32(Start), position30(End).
identifier6(['uast:Identifier', 'out', Pos, [Role0]]) :- positions27(Pos),role0(Role0).
qualified_identifier0(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions25(Pos),identifier5(Name0),identifier6(Name1).
value29('Before Swapping').
position33(['uast:Position', 37, 8, 188]).
position34(['uast:Position', 54, 8, 205]).
positions28(['uast:Positions', Start, End]) :- position33(Start), position34(End).
value30('Argument').
value31('Positional').
array19([Arg0,Arg1,Arg2]) :- value27(Arg0),value30(Arg1),value31(Arg2).
value32('uast:String').
value33('').
object13(Obj) :- value33(Obj), !.
object13(Obj) :- value29(Obj), !.
object13(Obj) :- positions28(Obj), !.
object13(Obj) :- array19(Obj), !.
object13(Obj) :- value32(Obj), !.
array20([Arg0]) :- object13(Arg0).
object14(Obj) :- array20(Obj), !.
object14(Obj) :- positions23(Obj), !.
object14(Obj) :- array18(Obj), !.
object14(Obj) :- value28(Obj), !.
object14(Obj) :- identifier4(Obj), !.
object14(Obj) :- qualified_identifier0(Obj), !.
object15(Obj) :- value26(Obj), !.
object15(Obj) :- object14(Obj), !.
object15(Obj) :- positions22(Obj), !.
object15(Obj) :- array17(Obj), !.
position35(['uast:Position', 18, 9, 225]).
position36(['uast:Position', 66, 9, 273]).
positions29(['uast:Positions', Start, End]) :- position35(Start), position36(End).
array21([Arg0]) :- value13(Arg0).
array22([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
position37(['uast:Position', 29, 9, 236]).
position38(['uast:Position', 36, 9, 243]).
positions30(['uast:Positions', Start, End]) :- position37(Start), position38(End).
identifier7(['uast:Identifier', 'println', Pos, [Role0]]) :- positions30(Pos),role0(Role0).
position39(['uast:Position', 28, 9, 235]).
positions31(['uast:Positions', Start, End]) :- position35(Start), position39(End).
position40(['uast:Position', 24, 9, 231]).
positions32(['uast:Positions', Start, End]) :- position35(Start), position40(End).
identifier8(['uast:Identifier', 'System', Pos, [Role0]]) :- positions32(Pos),role0(Role0).
position41(['uast:Position', 25, 9, 232]).
positions33(['uast:Positions', Start, End]) :- position41(Start), position39(End).
identifier9(['uast:Identifier', 'out', Pos, [Role0]]) :- positions33(Pos),role0(Role0).
qualified_identifier1(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions31(Pos),identifier8(Name0),identifier9(Name1).
position42(['uast:Position', 37, 9, 244]).
position43(['uast:Position', 57, 9, 264]).
positions34(['uast:Positions', Start, End]) :- position42(Start), position43(End).
value34('Binary').
value35('Left').
array23([Arg0,Arg1,Arg2]) :- value17(Arg0),value34(Arg1),value35(Arg2).
value36('Value of num1 is :').
object16(Obj) :- value32(Obj), !.
object16(Obj) :- value33(Obj), !.
object16(Obj) :- value36(Obj), !.
object16(Obj) :- positions34(Obj), !.
object16(Obj) :- array23(Obj), !.
value37('Arithmetic').
value38('Add').
value39('Operator').
array24([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value37(Arg0),value38(Arg1),value17(Arg2),value39(Arg3),value34(Arg4).
value40('uast:Operator').
value41('+').
object17(Obj) :- array24(Obj), !.
object17(Obj) :- value40(Obj), !.
object17(Obj) :- value41(Obj), !.
position44(['uast:Position', 60, 9, 267]).
position45(['uast:Position', 64, 9, 271]).
positions35(['uast:Positions', Start, End]) :- position44(Start), position45(End).
identifier10(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions35(Pos),role0(Role0).
positions36(['uast:Positions', Start, End]) :- position42(Start), position45(End).
array25([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value37(Arg0),value38(Arg1),value17(Arg2),value34(Arg3),value39(Arg4),value27(Arg5),value30(Arg6),value31(Arg7).
value42('java:InfixExpression').
object18(Obj) :- object16(Obj), !.
object18(Obj) :- object17(Obj), !.
object18(Obj) :- identifier10(Obj), !.
object18(Obj) :- positions36(Obj), !.
object18(Obj) :- array25(Obj), !.
object18(Obj) :- value42(Obj), !.
array26([Arg0]) :- object18(Arg0).
position46(['uast:Position', 65, 9, 272]).
positions37(['uast:Positions', Start, End]) :- position35(Start), position46(End).
object19(Obj) :- identifier7(Obj), !.
object19(Obj) :- qualified_identifier1(Obj), !.
object19(Obj) :- array26(Obj), !.
object19(Obj) :- positions37(Obj), !.
object19(Obj) :- array22(Obj), !.
object19(Obj) :- value28(Obj), !.
object20(Obj) :- positions29(Obj), !.
object20(Obj) :- array21(Obj), !.
object20(Obj) :- value26(Obj), !.
object20(Obj) :- object19(Obj), !.
position47(['uast:Position', 18, 10, 291]).
position48(['uast:Position', 65, 10, 338]).
positions38(['uast:Positions', Start, End]) :- position47(Start), position48(End).
array27([Arg0]) :- value13(Arg0).
position49(['uast:Position', 28, 10, 301]).
positions39(['uast:Positions', Start, End]) :- position47(Start), position49(End).
position50(['uast:Position', 24, 10, 297]).
positions40(['uast:Positions', Start, End]) :- position47(Start), position50(End).
identifier11(['uast:Identifier', 'System', Pos, [Role0]]) :- positions40(Pos),role0(Role0).
position51(['uast:Position', 25, 10, 298]).
positions41(['uast:Positions', Start, End]) :- position51(Start), position49(End).
identifier12(['uast:Identifier', 'out', Pos, [Role0]]) :- positions41(Pos),role0(Role0).
qualified_identifier2(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions39(Pos),identifier11(Name0),identifier12(Name1).
position52(['uast:Position', 37, 10, 310]).
position53(['uast:Position', 63, 10, 336]).
positions42(['uast:Positions', Start, End]) :- position52(Start), position53(End).
array28([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value37(Arg0),value38(Arg1),value17(Arg2),value34(Arg3),value39(Arg4),value27(Arg5),value30(Arg6),value31(Arg7).
position54(['uast:Position', 57, 10, 330]).
positions43(['uast:Positions', Start, End]) :- position52(Start), position54(End).
array29([Arg0,Arg1,Arg2]) :- value17(Arg0),value34(Arg1),value35(Arg2).
value43('Value of num2 is :').
object21(Obj) :- positions43(Obj), !.
object21(Obj) :- array29(Obj), !.
object21(Obj) :- value32(Obj), !.
object21(Obj) :- value33(Obj), !.
object21(Obj) :- value43(Obj), !.
array30([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value37(Arg0),value38(Arg1),value17(Arg2),value39(Arg3),value34(Arg4).
object22(Obj) :- value41(Obj), !.
object22(Obj) :- array30(Obj), !.
object22(Obj) :- value40(Obj), !.
position55(['uast:Position', 59, 10, 332]).
positions44(['uast:Positions', Start, End]) :- position55(Start), position53(End).
identifier13(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions44(Pos),role0(Role0).
object23(Obj) :- positions42(Obj), !.
object23(Obj) :- array28(Obj), !.
object23(Obj) :- value42(Obj), !.
object23(Obj) :- object21(Obj), !.
object23(Obj) :- object22(Obj), !.
object23(Obj) :- identifier13(Obj), !.
array31([Arg0]) :- object23(Arg0).
position56(['uast:Position', 64, 10, 337]).
positions45(['uast:Positions', Start, End]) :- position47(Start), position56(End).
array32([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
position57(['uast:Position', 29, 10, 302]).
position58(['uast:Position', 36, 10, 309]).
positions46(['uast:Positions', Start, End]) :- position57(Start), position58(End).
identifier14(['uast:Identifier', 'println', Pos, [Role0]]) :- positions46(Pos),role0(Role0).
object24(Obj) :- value28(Obj), !.
object24(Obj) :- identifier14(Obj), !.
object24(Obj) :- qualified_identifier2(Obj), !.
object24(Obj) :- array31(Obj), !.
object24(Obj) :- positions45(Obj), !.
object24(Obj) :- array32(Obj), !.
object25(Obj) :- positions38(Obj), !.
object25(Obj) :- array27(Obj), !.
object25(Obj) :- value26(Obj), !.
object25(Obj) :- object24(Obj), !.
position59(['uast:Position', 23, 13, 396]).
position60(['uast:Position', 27, 13, 400]).
positions47(['uast:Positions', Start, End]) :- position59(Start), position60(End).
identifier15(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions47(Pos),role0(Role0).
position61(['uast:Position', 29, 13, 402]).
position62(['uast:Position', 33, 13, 406]).
positions48(['uast:Positions', Start, End]) :- position61(Start), position62(End).
identifier16(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions48(Pos),role0(Role0).
array33([Arg0,Arg1]) :- identifier15(Arg0),identifier16(Arg1).
position63(['uast:Position', 18, 13, 391]).
position64(['uast:Position', 34, 13, 407]).
positions49(['uast:Positions', Start, End]) :- position63(Start), position64(End).
array34([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
position65(['uast:Position', 22, 13, 395]).
positions50(['uast:Positions', Start, End]) :- position63(Start), position65(End).
identifier17(['uast:Identifier', 'swap', Pos, [Role0]]) :- positions50(Pos),role0(Role0).
object26(Obj) :- array33(Obj), !.
object26(Obj) :- positions49(Obj), !.
object26(Obj) :- array34(Obj), !.
object26(Obj) :- value28(Obj), !.
object26(Obj) :- identifier17(Obj), !.
position66(['uast:Position', 35, 13, 408]).
positions51(['uast:Positions', Start, End]) :- position63(Start), position66(End).
array35([Arg0]) :- value13(Arg0).
object27(Obj) :- positions51(Obj), !.
object27(Obj) :- array35(Obj), !.
object27(Obj) :- value26(Obj), !.
object27(Obj) :- object26(Obj), !.
block0(['uast:Block', [Stmt0,Stmt1,Stmt2,Stmt3,Stmt4,Stmt5], Pos]) :- positions11(Pos),object8(Stmt0),object12(Stmt1),object15(Stmt2),object20(Stmt3),object25(Stmt4),object27(Stmt5).
positions52(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions52(Pos).
position67(['uast:Position', 29, 3, 64]).
position68(['uast:Position', 33, 3, 68]).
positions53(['uast:Positions', Start, End]) :- position67(Start), position68(End).
identifier18(['uast:Identifier', 'main', Pos, [Role0]]) :- positions53(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier18(Name),function0(Node),positions3(Pos).
value44('false').
object28(Obj) :- value44(Obj), !.
function_group0(['uast:FunctionGroup', [Node0,Node1,Node2], Pos]) :- positions0(Pos),array2(Node0),alias0(Node1),object28(Node2).
position69(['uast:Position', 10, 16, 430]).
position70(['uast:Position', 11, 26, 770]).
positions54(['uast:Positions', Start, End]) :- position69(Start), position70(End).
value45('private').
position71(['uast:Position', 17, 16, 437]).
positions55(['uast:Positions', Start, End]) :- position69(Start), position71(End).
value46('Instance').
array36([Arg0,Arg1]) :- value1(Arg0),value46(Arg1).
object29(Obj) :- value3(Obj), !.
object29(Obj) :- value45(Obj), !.
object29(Obj) :- positions55(Obj), !.
object29(Obj) :- array36(Obj), !.
position72(['uast:Position', 18, 16, 438]).
position73(['uast:Position', 24, 16, 444]).
positions56(['uast:Positions', Start, End]) :- position72(Start), position73(End).
array37([Arg0]) :- value6(Arg0).
object30(Obj) :- positions56(Obj), !.
object30(Obj) :- array37(Obj), !.
object30(Obj) :- value3(Obj), !.
object30(Obj) :- value5(Obj), !.
array38([Arg0,Arg1]) :- object29(Arg0),object30(Arg1).
positions57(['uast:Positions', _, _]).
positions58(['uast:Positions', _, _]).
position74(['uast:Position', 39, 16, 459]).
position75(['uast:Position', 43, 16, 463]).
positions59(['uast:Positions', Start, End]) :- position74(Start), position75(End).
identifier19(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions59(Pos),role0(Role0).
position76(['uast:Position', 35, 16, 455]).
position77(['uast:Position', 38, 16, 458]).
positions60(['uast:Positions', Start, End]) :- position76(Start), position77(End).
array39([Arg0,Arg1,Arg2]) :- value19(Arg0),value7(Arg1),value8(Arg2).
object31(Obj) :- value24(Obj), !.
object31(Obj) :- value23(Obj), !.
object31(Obj) :- positions60(Obj), !.
object31(Obj) :- array39(Obj), !.
positions61(['uast:Positions', Start, End]) :- position76(Start), position75(End).
argument1(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier19(Name),object31(Type),positions61(Pos).
position78(['uast:Position', 49, 16, 469]).
position79(['uast:Position', 53, 16, 473]).
positions62(['uast:Positions', Start, End]) :- position78(Start), position79(End).
identifier20(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions62(Pos),role0(Role0).
position80(['uast:Position', 45, 16, 465]).
position81(['uast:Position', 48, 16, 468]).
positions63(['uast:Positions', Start, End]) :- position80(Start), position81(End).
array40([Arg0,Arg1,Arg2]) :- value19(Arg0),value7(Arg1),value8(Arg2).
object32(Obj) :- value23(Obj), !.
object32(Obj) :- positions63(Obj), !.
object32(Obj) :- array40(Obj), !.
object32(Obj) :- value24(Obj), !.
positions64(['uast:Positions', Start, End]) :- position80(Start), position79(End).
argument2(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier20(Name),object32(Type),positions64(Pos).
function_type1(['uast:FunctionType', [Arg0,Arg1], [], Pos]) :- argument1(Arg0),argument2(Arg1),positions58(Pos).
position82(['uast:Position', 55, 16, 475]).
positions65(['uast:Positions', Start, End]) :- position82(Start), position70(End).
position83(['uast:Position', 18, 18, 495]).
position84(['uast:Position', 34, 18, 511]).
positions66(['uast:Positions', Start, End]) :- position83(Start), position84(End).
array41([Arg0,Arg1,Arg2]) :- value13(Arg0),value14(Arg1),value15(Arg2).
position85(['uast:Position', 29, 18, 506]).
position86(['uast:Position', 33, 18, 510]).
positions67(['uast:Positions', Start, End]) :- position85(Start), position86(End).
identifier21(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions67(Pos),role0(Role0).
position87(['uast:Position', 22, 18, 499]).
positions68(['uast:Positions', Start, End]) :- position87(Start), position86(End).
array42([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
position88(['uast:Position', 26, 18, 503]).
positions69(['uast:Positions', Start, End]) :- position87(Start), position88(End).
identifier22(['uast:Identifier', 'temp', Pos, [Role0]]) :- positions69(Pos),role0(Role0).
object33(Obj) :- value22(Obj), !.
object33(Obj) :- identifier22(Obj), !.
object33(Obj) :- identifier21(Obj), !.
object33(Obj) :- positions68(Obj), !.
object33(Obj) :- array42(Obj), !.
array43([Arg0]) :- object33(Arg0).
position89(['uast:Position', 21, 18, 498]).
positions70(['uast:Positions', Start, End]) :- position83(Start), position89(End).
array44([Arg0,Arg1,Arg2]) :- value19(Arg0),value7(Arg1),value8(Arg2).
object34(Obj) :- value23(Obj), !.
object34(Obj) :- positions70(Obj), !.
object34(Obj) :- array44(Obj), !.
object34(Obj) :- value24(Obj), !.
object35(Obj) :- array43(Obj), !.
object35(Obj) :- object34(Obj), !.
object35(Obj) :- positions66(Obj), !.
object35(Obj) :- array41(Obj), !.
object35(Obj) :- value16(Obj), !.
position90(['uast:Position', 18, 19, 529]).
position91(['uast:Position', 29, 19, 540]).
positions71(['uast:Positions', Start, End]) :- position90(Start), position91(End).
value47('Assignment').
array45([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value47(Arg1),value39(Arg2),value34(Arg3).
value48('java:Assignment').
array46([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value39(Arg1),value47(Arg2),value34(Arg3).
value49('=').
object36(Obj) :- array46(Obj), !.
object36(Obj) :- value40(Obj), !.
object36(Obj) :- value49(Obj), !.
position92(['uast:Position', 22, 19, 533]).
positions72(['uast:Positions', Start, End]) :- position90(Start), position92(End).
identifier23(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions72(Pos),role0(Role0).
position93(['uast:Position', 25, 19, 536]).
positions73(['uast:Positions', Start, End]) :- position93(Start), position91(End).
identifier24(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions73(Pos),role0(Role0).
object37(Obj) :- identifier24(Obj), !.
object37(Obj) :- positions71(Obj), !.
object37(Obj) :- array45(Obj), !.
object37(Obj) :- value48(Obj), !.
object37(Obj) :- object36(Obj), !.
object37(Obj) :- identifier23(Obj), !.
position94(['uast:Position', 30, 19, 541]).
positions74(['uast:Positions', Start, End]) :- position90(Start), position94(End).
array47([Arg0]) :- value13(Arg0).
object38(Obj) :- value26(Obj), !.
object38(Obj) :- object37(Obj), !.
object38(Obj) :- positions74(Obj), !.
object38(Obj) :- array47(Obj), !.
position95(['uast:Position', 18, 20, 559]).
position96(['uast:Position', 29, 20, 570]).
positions75(['uast:Positions', Start, End]) :- position95(Start), position96(End).
array48([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value47(Arg1),value39(Arg2),value34(Arg3).
array49([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value39(Arg1),value47(Arg2),value34(Arg3).
object39(Obj) :- value49(Obj), !.
object39(Obj) :- array49(Obj), !.
object39(Obj) :- value40(Obj), !.
position97(['uast:Position', 22, 20, 563]).
positions76(['uast:Positions', Start, End]) :- position95(Start), position97(End).
identifier25(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions76(Pos),role0(Role0).
position98(['uast:Position', 25, 20, 566]).
positions77(['uast:Positions', Start, End]) :- position98(Start), position96(End).
identifier26(['uast:Identifier', 'temp', Pos, [Role0]]) :- positions77(Pos),role0(Role0).
object40(Obj) :- positions75(Obj), !.
object40(Obj) :- array48(Obj), !.
object40(Obj) :- value48(Obj), !.
object40(Obj) :- object39(Obj), !.
object40(Obj) :- identifier25(Obj), !.
object40(Obj) :- identifier26(Obj), !.
position99(['uast:Position', 30, 20, 571]).
positions78(['uast:Positions', Start, End]) :- position95(Start), position99(End).
array50([Arg0]) :- value13(Arg0).
object41(Obj) :- value26(Obj), !.
object41(Obj) :- object40(Obj), !.
object41(Obj) :- positions78(Obj), !.
object41(Obj) :- array50(Obj), !.
position100(['uast:Position', 18, 22, 590]).
position101(['uast:Position', 55, 22, 627]).
positions79(['uast:Positions', Start, End]) :- position100(Start), position101(End).
array51([Arg0]) :- value13(Arg0).
array52([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
position102(['uast:Position', 29, 22, 601]).
position103(['uast:Position', 36, 22, 608]).
positions80(['uast:Positions', Start, End]) :- position102(Start), position103(End).
identifier27(['uast:Identifier', 'println', Pos, [Role0]]) :- positions80(Pos),role0(Role0).
position104(['uast:Position', 28, 22, 600]).
positions81(['uast:Positions', Start, End]) :- position100(Start), position104(End).
position105(['uast:Position', 24, 22, 596]).
positions82(['uast:Positions', Start, End]) :- position100(Start), position105(End).
identifier28(['uast:Identifier', 'System', Pos, [Role0]]) :- positions82(Pos),role0(Role0).
position106(['uast:Position', 25, 22, 597]).
positions83(['uast:Positions', Start, End]) :- position106(Start), position104(End).
identifier29(['uast:Identifier', 'out', Pos, [Role0]]) :- positions83(Pos),role0(Role0).
qualified_identifier3(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions81(Pos),identifier28(Name0),identifier29(Name1).
array53([Arg0,Arg1,Arg2]) :- value27(Arg0),value30(Arg1),value31(Arg2).
value50('After Swapping').
position107(['uast:Position', 37, 22, 609]).
position108(['uast:Position', 53, 22, 625]).
positions84(['uast:Positions', Start, End]) :- position107(Start), position108(End).
object42(Obj) :- value33(Obj), !.
object42(Obj) :- value50(Obj), !.
object42(Obj) :- positions84(Obj), !.
object42(Obj) :- array53(Obj), !.
object42(Obj) :- value32(Obj), !.
array54([Arg0]) :- object42(Arg0).
position109(['uast:Position', 54, 22, 626]).
positions85(['uast:Positions', Start, End]) :- position100(Start), position109(End).
object43(Obj) :- array52(Obj), !.
object43(Obj) :- value28(Obj), !.
object43(Obj) :- identifier27(Obj), !.
object43(Obj) :- qualified_identifier3(Obj), !.
object43(Obj) :- array54(Obj), !.
object43(Obj) :- positions85(Obj), !.
object44(Obj) :- array51(Obj), !.
object44(Obj) :- value26(Obj), !.
object44(Obj) :- object43(Obj), !.
object44(Obj) :- positions79(Obj), !.
position110(['uast:Position', 18, 23, 645]).
position111(['uast:Position', 66, 23, 693]).
positions86(['uast:Positions', Start, End]) :- position110(Start), position111(End).
array55([Arg0]) :- value13(Arg0).
position112(['uast:Position', 60, 23, 687]).
position113(['uast:Position', 64, 23, 691]).
positions87(['uast:Positions', Start, End]) :- position112(Start), position113(End).
identifier30(['uast:Identifier', 'num1', Pos, [Role0]]) :- positions87(Pos),role0(Role0).
position114(['uast:Position', 37, 23, 664]).
positions88(['uast:Positions', Start, End]) :- position114(Start), position113(End).
array56([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value37(Arg0),value38(Arg1),value17(Arg2),value34(Arg3),value39(Arg4),value27(Arg5),value30(Arg6),value31(Arg7).
position115(['uast:Position', 57, 23, 684]).
positions89(['uast:Positions', Start, End]) :- position114(Start), position115(End).
array57([Arg0,Arg1,Arg2]) :- value17(Arg0),value34(Arg1),value35(Arg2).
object45(Obj) :- value36(Obj), !.
object45(Obj) :- positions89(Obj), !.
object45(Obj) :- array57(Obj), !.
object45(Obj) :- value32(Obj), !.
object45(Obj) :- value33(Obj), !.
array58([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value37(Arg0),value38(Arg1),value17(Arg2),value39(Arg3),value34(Arg4).
object46(Obj) :- array58(Obj), !.
object46(Obj) :- value40(Obj), !.
object46(Obj) :- value41(Obj), !.
object47(Obj) :- identifier30(Obj), !.
object47(Obj) :- positions88(Obj), !.
object47(Obj) :- array56(Obj), !.
object47(Obj) :- value42(Obj), !.
object47(Obj) :- object45(Obj), !.
object47(Obj) :- object46(Obj), !.
array59([Arg0]) :- object47(Arg0).
position116(['uast:Position', 65, 23, 692]).
positions90(['uast:Positions', Start, End]) :- position110(Start), position116(End).
array60([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
position117(['uast:Position', 29, 23, 656]).
position118(['uast:Position', 36, 23, 663]).
positions91(['uast:Positions', Start, End]) :- position117(Start), position118(End).
identifier31(['uast:Identifier', 'println', Pos, [Role0]]) :- positions91(Pos),role0(Role0).
position119(['uast:Position', 28, 23, 655]).
positions92(['uast:Positions', Start, End]) :- position110(Start), position119(End).
position120(['uast:Position', 24, 23, 651]).
positions93(['uast:Positions', Start, End]) :- position110(Start), position120(End).
identifier32(['uast:Identifier', 'System', Pos, [Role0]]) :- positions93(Pos),role0(Role0).
position121(['uast:Position', 25, 23, 652]).
positions94(['uast:Positions', Start, End]) :- position121(Start), position119(End).
identifier33(['uast:Identifier', 'out', Pos, [Role0]]) :- positions94(Pos),role0(Role0).
qualified_identifier4(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions92(Pos),identifier32(Name0),identifier33(Name1).
object48(Obj) :- array59(Obj), !.
object48(Obj) :- positions90(Obj), !.
object48(Obj) :- array60(Obj), !.
object48(Obj) :- value28(Obj), !.
object48(Obj) :- identifier31(Obj), !.
object48(Obj) :- qualified_identifier4(Obj), !.
object49(Obj) :- object48(Obj), !.
object49(Obj) :- positions86(Obj), !.
object49(Obj) :- array55(Obj), !.
object49(Obj) :- value26(Obj), !.
position122(['uast:Position', 29, 24, 722]).
position123(['uast:Position', 36, 24, 729]).
positions95(['uast:Positions', Start, End]) :- position122(Start), position123(End).
identifier34(['uast:Identifier', 'println', Pos, [Role0]]) :- positions95(Pos),role0(Role0).
position124(['uast:Position', 18, 24, 711]).
position125(['uast:Position', 28, 24, 721]).
positions96(['uast:Positions', Start, End]) :- position124(Start), position125(End).
position126(['uast:Position', 24, 24, 717]).
positions97(['uast:Positions', Start, End]) :- position124(Start), position126(End).
identifier35(['uast:Identifier', 'System', Pos, [Role0]]) :- positions97(Pos),role0(Role0).
position127(['uast:Position', 25, 24, 718]).
positions98(['uast:Positions', Start, End]) :- position127(Start), position125(End).
identifier36(['uast:Identifier', 'out', Pos, [Role0]]) :- positions98(Pos),role0(Role0).
qualified_identifier5(['uast:QualifiedIdentifier', [Name0,Name1], Pos]) :- positions96(Pos),identifier35(Name0),identifier36(Name1).
array61([Arg0,Arg1,Arg2]) :- value17(Arg0),value34(Arg1),value35(Arg2).
position128(['uast:Position', 37, 24, 730]).
position129(['uast:Position', 57, 24, 750]).
positions99(['uast:Positions', Start, End]) :- position128(Start), position129(End).
object50(Obj) :- positions99(Obj), !.
object50(Obj) :- array61(Obj), !.
object50(Obj) :- value32(Obj), !.
object50(Obj) :- value33(Obj), !.
object50(Obj) :- value43(Obj), !.
array62([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value37(Arg0),value38(Arg1),value17(Arg2),value39(Arg3),value34(Arg4).
object51(Obj) :- array62(Obj), !.
object51(Obj) :- value40(Obj), !.
object51(Obj) :- value41(Obj), !.
position130(['uast:Position', 59, 24, 752]).
position131(['uast:Position', 63, 24, 756]).
positions100(['uast:Positions', Start, End]) :- position130(Start), position131(End).
identifier37(['uast:Identifier', 'num2', Pos, [Role0]]) :- positions100(Pos),role0(Role0).
positions101(['uast:Positions', Start, End]) :- position128(Start), position131(End).
array63([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value37(Arg0),value38(Arg1),value17(Arg2),value34(Arg3),value39(Arg4),value27(Arg5),value30(Arg6),value31(Arg7).
object52(Obj) :- positions101(Obj), !.
object52(Obj) :- array63(Obj), !.
object52(Obj) :- value42(Obj), !.
object52(Obj) :- object50(Obj), !.
object52(Obj) :- object51(Obj), !.
object52(Obj) :- identifier37(Obj), !.
array64([Arg0]) :- object52(Arg0).
position132(['uast:Position', 64, 24, 757]).
positions102(['uast:Positions', Start, End]) :- position124(Start), position132(End).
array65([Arg0,Arg1]) :- value17(Arg0),value27(Arg1).
object53(Obj) :- array65(Obj), !.
object53(Obj) :- value28(Obj), !.
object53(Obj) :- identifier34(Obj), !.
object53(Obj) :- qualified_identifier5(Obj), !.
object53(Obj) :- array64(Obj), !.
object53(Obj) :- positions102(Obj), !.
position133(['uast:Position', 65, 24, 758]).
positions103(['uast:Positions', Start, End]) :- position124(Start), position133(End).
array66([Arg0]) :- value13(Arg0).
object54(Obj) :- object53(Obj), !.
object54(Obj) :- positions103(Obj), !.
object54(Obj) :- array66(Obj), !.
object54(Obj) :- value26(Obj), !.
block1(['uast:Block', [Stmt0,Stmt1,Stmt2,Stmt3,Stmt4,Stmt5], Pos]) :- positions65(Pos),object35(Stmt0),object38(Stmt1),object41(Stmt2),object44(Stmt3),object49(Stmt4),object54(Stmt5).
positions104(['uast:Positions', _, _]).
function1(['uast:Function', FnType, Body, Pos]) :- function_type1(FnType),block1(Body),positions104(Pos).
position134(['uast:Position', 30, 16, 450]).
position135(['uast:Position', 34, 16, 454]).
positions105(['uast:Positions', Start, End]) :- position134(Start), position135(End).
identifier38(['uast:Identifier', 'swap', Pos, [Role0]]) :- positions105(Pos),role0(Role0).
alias1(['uast:Alias', Name, Node, Pos]) :- identifier38(Name),function1(Node),positions57(Pos).
object55(Obj) :- value44(Obj), !.
function_group1(['uast:FunctionGroup', [Node0,Node1,Node2], Pos]) :- positions54(Pos),array38(Node0),alias1(Node1),object55(Node2).
array67([Arg0,Arg1]) :- function_group0(Arg0),function_group1(Arg1).
position136(['uast:Position', 1, 1, 0]).
position137(['uast:Position', 7, 1, 6]).
positions106(['uast:Positions', Start, End]) :- position136(Start), position137(End).
array68([Arg0,Arg1]) :- value1(Arg0),value2(Arg1).
object56(Obj) :- value3(Obj), !.
object56(Obj) :- value4(Obj), !.
object56(Obj) :- positions106(Obj), !.
object56(Obj) :- array68(Obj), !.
array69([Arg0]) :- object56(Arg0).
position138(['uast:Position', 3, 27, 773]).
positions107(['uast:Positions', Start, End]) :- position136(Start), position138(End).
array70([Arg0,Arg1,Arg2,Arg3]) :- value1(Arg0),value2(Arg1),value14(Arg2),value7(Arg3).
position139(['uast:Position', 14, 1, 13]).
position140(['uast:Position', 33, 1, 32]).
positions108(['uast:Positions', Start, End]) :- position139(Start), position140(End).
identifier39(['uast:Identifier', 'SwapElementsExample', Pos, [Role0]]) :- positions108(Pos),role0(Role0).
object57(Obj) :- value44(Obj), !.
object57(Obj) :- array69(Obj), !.
object57(Obj) :- positions107(Obj), !.
object57(Obj) :- array70(Obj), !.
object57(Obj) :- identifier39(Obj), !.
object57(Obj) :- value0(Obj), !.
object57(Obj) :- array67(Obj), !.
array71([Arg0]) :- object57(Arg0).
position141(['uast:Position', 1, 30, 776]).
positions109(['uast:Positions', Start, End]) :- position136(Start), position141(End).
value51('File').
array72([Arg0]) :- value51(Arg0).
value52('java:CompilationUnit').
position142(['uast:Position', 18, 12, 357]).
position143(['uast:Position', 34, 12, 373]).
positions110(['uast:Positions', Start, End]) :- position142(Start), position143(End).
comment0(['uast:Comment', '', '', '', 'swap the value', false, Pos]) :- positions110(Pos).
array73([Arg0]) :- comment0(Arg0).
object58(Obj) :- value52(Obj), !.
object58(Obj) :- array73(Obj), !.
object58(Obj) :- array71(Obj), !.
object58(Obj) :- positions109(Obj), !.
object58(Obj) :- array72(Obj), !.

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
