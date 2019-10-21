position0(['uast:Position', 1, 1, 0]).
position1(['uast:Position', 2, 10, 124]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
object0(_).
object1(Obj) :- !,object0(Obj).
positions1(['uast:Positions', _, _]).
positions2(['uast:Positions', _, _]).
position2(['uast:Position', 14, 1, 13]).
position3(['uast:Position', 15, 1, 14]).
positions3(['uast:Positions', Start, End]) :- position2(Start), position3(End).
role0('Identifier').
identifier0(['uast:Identifier', 'n', Pos, [Role0]]) :- positions3(Pos),role0(Role0).
value0(false).
value1('unspecified').
value2('cpp:CPPASTSimpleDeclSpecifier').
value3('int').
value4('Type').
value5('Number').
array0([Arg0,Arg1]) :- value4(Arg0),value5(Arg1).
position4(['uast:Position', 10, 1, 9]).
position5(['uast:Position', 13, 1, 12]).
positions4(['uast:Positions', Start, End]) :- position4(Start), position5(End).
object2(Obj) :- !,value0(Obj);value0(Obj);value1(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value2(Obj);value3(Obj);value0(Obj);value0(Obj);array0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);positions4(Obj).
positions5(['uast:Positions', _, _]).
argument0(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier0(Name),object2(Type),positions5(Pos).
position6(['uast:Position', 22, 1, 21]).
position7(['uast:Position', 23, 1, 22]).
positions6(['uast:Positions', Start, End]) :- position6(Start), position7(End).
identifier1(['uast:Identifier', 'a', Pos, [Role0]]) :- positions6(Pos),role0(Role0).
array1([Arg0]) :- value4(Arg0).
value6(true).
position8(['uast:Position', 17, 1, 16]).
position9(['uast:Position', 21, 1, 20]).
positions7(['uast:Positions', Start, End]) :- position8(Start), position9(End).
value7('unespecified').
object3(Obj) :- !,value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);array1(Obj);value0(Obj);value6(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);positions7(Obj);value7(Obj);value0(Obj);value0(Obj);value2(Obj);value1(Obj).
positions8(['uast:Positions', _, _]).
argument1(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier1(Name),object3(Type),positions8(Pos).
position10(['uast:Position', 30, 1, 29]).
position11(['uast:Position', 31, 1, 30]).
positions9(['uast:Positions', Start, End]) :- position10(Start), position11(End).
identifier2(['uast:Identifier', 'b', Pos, [Role0]]) :- positions9(Pos),role0(Role0).
array2([Arg0]) :- value4(Arg0).
position12(['uast:Position', 25, 1, 24]).
position13(['uast:Position', 29, 1, 28]).
positions10(['uast:Positions', Start, End]) :- position12(Start), position13(End).
object4(Obj) :- !,value0(Obj);value0(Obj);value1(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);array2(Obj);value7(Obj);value0(Obj);value6(Obj);value0(Obj);value0(Obj);value2(Obj);value0(Obj);value0(Obj);value0(Obj);value0(Obj);positions10(Obj);value0(Obj).
positions11(['uast:Positions', _, _]).
argument2(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier2(Name),object4(Type),positions11(Pos).
positions12(['uast:Positions', _, _]).
identifier3(['uast:Identifier', 'unespecified', Pos, [Role0]]) :- positions12(Pos),role0(Role0).
positions13(['uast:Positions', _, _]).
argument3(['uast:Argument', _, Type, _, false, false, false, Pos]) :- identifier3(Type),positions13(Pos).
function_type0(['uast:FunctionType', [Arg0,Arg1,Arg2], [Ret0], Pos]) :- argument0(Arg0),argument1(Arg1),argument2(Arg2),argument3(Ret0),positions2(Pos).
position14(['uast:Position', 33, 1, 32]).
positions14(['uast:Positions', Start, End]) :- position14(Start), position1(End).
value8('0').
value9('PRVALUE').
value10('integer_constant').
position15(['uast:Position', 11, 2, 44]).
position16(['uast:Position', 12, 2, 45]).
positions15(['uast:Positions', Start, End]) :- position15(Start), position16(End).
value11('Expression').
value12('Literal').
value13('Binary').
value14('Right').
value15('Initialization').
value16('Incomplete').
array3([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4),value15(Arg5),value16(Arg6).
value17('cpp:CPPASTLiteralExpression').
object5(Obj) :- !,value8(Obj);value3(Obj);value9(Obj);value0(Obj);value10(Obj);positions15(Obj);array3(Obj);value17(Obj).
position17(['uast:Position', 6, 2, 39]).
position18(['uast:Position', 7, 2, 40]).
positions16(['uast:Positions', Start, End]) :- position17(Start), position18(End).
value18('Variable').
value19('Left').
array4([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value19(Arg3).
value20('cpp:CPPASTIdExpression').
value21('LVALUE').
positions17(['uast:Positions', Start, End]) :- position17(Start), position18(End).
identifier4(['uast:Identifier', 'n', Pos, [Role0]]) :- positions17(Pos),role0(Role0).
object6(Obj) :- !,positions16(Obj);array4(Obj);value20(Obj);value3(Obj);value21(Obj);value6(Obj);identifier4(Obj).
positions18(['uast:Positions', Start, End]) :- position17(Start), position16(End).
value22('Relational').
value23('Equal').
value24('Operator').
array5([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value13(Arg0),value11(Arg1),value22(Arg2),value23(Arg3),value24(Arg4).
value25('==').
positions19(['uast:Positions', Start, End]) :- position15(Start), position16(End).
array6([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4).
object7(Obj) :- !,positions19(Obj);array6(Obj);value17(Obj);value8(Obj);value3(Obj);value9(Obj);value0(Obj);value10(Obj).
value26('cpp:CPPASTBinaryExpression').
value27('bool').
object8(Obj) :- !,object5(Obj);object6(Obj);positions18(Obj);array5(Obj);value25(Obj);value0(Obj);object7(Obj);value26(Obj);value27(Obj);value9(Obj).
position19(['uast:Position', 14, 2, 47]).
position20(['uast:Position', 3, 4, 63]).
positions20(['uast:Positions', Start, End]) :- position19(Start), position20(End).
position21(['uast:Position', 10, 3, 58]).
position22(['uast:Position', 11, 3, 59]).
positions21(['uast:Positions', Start, End]) :- position21(Start), position22(End).
array7([Arg0,Arg1]) :- value11(Arg0),value18(Arg1).
value28('long int').
positions22(['uast:Positions', Start, End]) :- position21(Start), position22(End).
identifier5(['uast:Identifier', 'a', Pos, [Role0]]) :- positions22(Pos),role0(Role0).
object9(Obj) :- !,positions21(Obj);array7(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier5(Obj).
position23(['uast:Position', 3, 3, 51]).
position24(['uast:Position', 12, 3, 60]).
positions23(['uast:Positions', Start, End]) :- position23(Start), position24(End).
value29('Statement').
value30('Return').
array8([Arg0,Arg1]) :- value29(Arg0),value30(Arg1).
value31('cpp:CPPASTReturnStatement').
value32('Value').
array9([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value30(Arg2),value32(Arg3).
positions24(['uast:Positions', Start, End]) :- position21(Start), position22(End).
identifier6(['uast:Identifier', 'a', Pos, [Role0]]) :- positions24(Pos),role0(Role0).
positions25(['uast:Positions', Start, End]) :- position21(Start), position22(End).
object10(Obj) :- !,array9(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier6(Obj);positions25(Obj).
object11(Obj) :- !,object9(Obj);positions23(Obj);array8(Obj);value31(Obj);object10(Obj).
block0(['uast:Block', [Stmt0], Pos]) :- positions20(Pos),object11(Stmt0).
position25(['uast:Position', 2, 2, 35]).
positions26(['uast:Positions', Start, End]) :- position25(Start), position20(End).
value33('If').
array10([Arg0,Arg1]) :- value33(Arg0),value29(Arg1).
value34('cpp:CPPASTIfStatement').
object12(Obj) :- !,object8(Obj);block0(Obj);positions26(Obj);array10(Obj);value34(Obj).
position26(['uast:Position', 2, 5, 65]).
position27(['uast:Position', 3, 7, 93]).
positions27(['uast:Positions', Start, End]) :- position26(Start), position27(End).
array11([Arg0,Arg1]) :- value33(Arg0),value29(Arg1).
array12([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4).
value35('1').
position28(['uast:Position', 11, 5, 74]).
position29(['uast:Position', 12, 5, 75]).
positions28(['uast:Positions', Start, End]) :- position28(Start), position29(End).
object13(Obj) :- !,array12(Obj);value17(Obj);value35(Obj);value3(Obj);value9(Obj);value0(Obj);value10(Obj);positions28(Obj).
position30(['uast:Position', 6, 5, 69]).
positions29(['uast:Positions', Start, End]) :- position30(Start), position29(End).
array13([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value13(Arg0),value11(Arg1),value22(Arg2),value23(Arg3),value24(Arg4).
positions30(['uast:Positions', Start, End]) :- position28(Start), position29(End).
array14([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4),value15(Arg5),value16(Arg6).
object14(Obj) :- !,value3(Obj);value9(Obj);value0(Obj);value10(Obj);positions30(Obj);array14(Obj);value17(Obj);value35(Obj).
array15([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value19(Arg3).
position31(['uast:Position', 7, 5, 70]).
positions31(['uast:Positions', Start, End]) :- position30(Start), position31(End).
identifier7(['uast:Identifier', 'n', Pos, [Role0]]) :- positions31(Pos),role0(Role0).
positions32(['uast:Positions', Start, End]) :- position30(Start), position31(End).
object15(Obj) :- !,array15(Obj);value20(Obj);value3(Obj);value21(Obj);value6(Obj);identifier7(Obj);positions32(Obj).
object16(Obj) :- !,object13(Obj);positions29(Obj);array13(Obj);value26(Obj);value25(Obj);value27(Obj);value9(Obj);value0(Obj);object14(Obj);object15(Obj).
position32(['uast:Position', 14, 5, 77]).
positions33(['uast:Positions', Start, End]) :- position32(Start), position27(End).
array16([Arg0,Arg1]) :- value29(Arg0),value30(Arg1).
position33(['uast:Position', 10, 6, 88]).
position34(['uast:Position', 11, 6, 89]).
positions34(['uast:Positions', Start, End]) :- position33(Start), position34(End).
array17([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value30(Arg2),value32(Arg3).
positions35(['uast:Positions', Start, End]) :- position33(Start), position34(End).
identifier8(['uast:Identifier', 'b', Pos, [Role0]]) :- positions35(Pos),role0(Role0).
object17(Obj) :- !,positions34(Obj);array17(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier8(Obj).
positions36(['uast:Positions', Start, End]) :- position33(Start), position34(End).
identifier9(['uast:Identifier', 'b', Pos, [Role0]]) :- positions36(Pos),role0(Role0).
positions37(['uast:Positions', Start, End]) :- position33(Start), position34(End).
array18([Arg0,Arg1]) :- value11(Arg0),value18(Arg1).
object18(Obj) :- !,value6(Obj);identifier9(Obj);positions37(Obj);array18(Obj);value20(Obj);value28(Obj);value21(Obj).
position35(['uast:Position', 3, 6, 81]).
position36(['uast:Position', 12, 6, 90]).
positions38(['uast:Positions', Start, End]) :- position35(Start), position36(End).
object19(Obj) :- !,array16(Obj);value31(Obj);object17(Obj);object18(Obj);positions38(Obj).
block1(['uast:Block', [Stmt0], Pos]) :- positions33(Pos),object19(Stmt0).
object20(Obj) :- !,positions27(Obj);array11(Obj);value34(Obj);object16(Obj);block1(Obj).
position37(['uast:Position', 9, 9, 103]).
position38(['uast:Position', 27, 9, 121]).
positions39(['uast:Positions', Start, End]) :- position37(Start), position38(End).
value36('Function').
value37('Call').
array19([Arg0,Arg1,Arg2]) :- value36(Arg0),value37(Arg1),value11(Arg2).
value38('cpp:CPPASTFunctionCallExpression').
value39('Arithmetic').
value40('Substract').
value41('Argument').
array20([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value13(Arg0),value11(Arg1),value39(Arg2),value40(Arg3),value24(Arg4),value36(Arg5),value37(Arg6),value41(Arg7).
position39(['uast:Position', 15, 9, 109]).
position40(['uast:Position', 16, 9, 110]).
positions40(['uast:Positions', Start, End]) :- position39(Start), position40(End).
array21([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4),value15(Arg5),value16(Arg6).
object21(Obj) :- !,value0(Obj);value10(Obj);positions40(Obj);array21(Obj);value17(Obj);value35(Obj);value3(Obj);value9(Obj).
position41(['uast:Position', 13, 9, 107]).
position42(['uast:Position', 14, 9, 108]).
positions41(['uast:Positions', Start, End]) :- position41(Start), position42(End).
identifier10(['uast:Identifier', 'n', Pos, [Role0]]) :- positions41(Pos),role0(Role0).
positions42(['uast:Positions', Start, End]) :- position41(Start), position42(End).
array22([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value19(Arg3).
object22(Obj) :- !,value3(Obj);value21(Obj);value6(Obj);identifier10(Obj);positions42(Obj);array22(Obj);value20(Obj).
positions43(['uast:Positions', Start, End]) :- position39(Start), position40(End).
array23([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4).
object23(Obj) :- !,value3(Obj);value9(Obj);value0(Obj);value10(Obj);positions43(Obj);array23(Obj);value17(Obj);value35(Obj).
positions44(['uast:Positions', Start, End]) :- position41(Start), position40(End).
value42('-').
object24(Obj) :- !,array20(Obj);value0(Obj);object21(Obj);object22(Obj);object23(Obj);positions44(Obj);value26(Obj);value42(Obj);value3(Obj);value9(Obj).
position43(['uast:Position', 18, 9, 112]).
position44(['uast:Position', 19, 9, 113]).
positions45(['uast:Positions', Start, End]) :- position43(Start), position44(End).
identifier11(['uast:Identifier', 'b', Pos, [Role0]]) :- positions45(Pos),role0(Role0).
positions46(['uast:Positions', Start, End]) :- position43(Start), position44(End).
array24([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value18(Arg1),value36(Arg2),value37(Arg3),value41(Arg4).
object25(Obj) :- !,value28(Obj);value21(Obj);value6(Obj);identifier11(Obj);positions46(Obj);array24(Obj);value20(Obj).
value43('+').
position45(['uast:Position', 21, 9, 115]).
position46(['uast:Position', 22, 9, 116]).
positions47(['uast:Positions', Start, End]) :- position45(Start), position46(End).
array25([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value19(Arg3).
positions48(['uast:Positions', Start, End]) :- position45(Start), position46(End).
identifier12(['uast:Identifier', 'a', Pos, [Role0]]) :- positions48(Pos),role0(Role0).
object26(Obj) :- !,positions47(Obj);array25(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier12(Obj).
value44('Add').
array26([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value13(Arg0),value11(Arg1),value39(Arg2),value44(Arg3),value24(Arg4),value36(Arg5),value37(Arg6),value41(Arg7).
position47(['uast:Position', 25, 9, 119]).
position48(['uast:Position', 26, 9, 120]).
positions49(['uast:Positions', Start, End]) :- position47(Start), position48(End).
array27([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value11(Arg0),value18(Arg1),value13(Arg2),value14(Arg3),value15(Arg4),value16(Arg5).
positions50(['uast:Positions', Start, End]) :- position47(Start), position48(End).
identifier13(['uast:Identifier', 'b', Pos, [Role0]]) :- positions50(Pos),role0(Role0).
object27(Obj) :- !,positions49(Obj);array27(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier13(Obj).
positions51(['uast:Positions', Start, End]) :- position47(Start), position48(End).
identifier14(['uast:Identifier', 'b', Pos, [Role0]]) :- positions51(Pos),role0(Role0).
positions52(['uast:Positions', Start, End]) :- position47(Start), position48(End).
array28([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value14(Arg3).
object28(Obj) :- !,value21(Obj);value6(Obj);identifier14(Obj);positions52(Obj);array28(Obj);value20(Obj);value28(Obj).
positions53(['uast:Positions', Start, End]) :- position45(Start), position48(End).
object29(Obj) :- !,value43(Obj);value9(Obj);object26(Obj);value26(Obj);array26(Obj);value28(Obj);value0(Obj);object27(Obj);object28(Obj);positions53(Obj).
array29([Arg0,Arg1,Arg2]) :- object24(Arg0),object25(Arg1),object29(Arg2).
value45('Name').
array30([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value18(Arg1),value36(Arg2),value37(Arg3),value45(Arg4).
value46('long int (int, long int, long int)').
position49(['uast:Position', 12, 9, 106]).
positions54(['uast:Positions', Start, End]) :- position37(Start), position49(End).
identifier15(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions54(Pos),role0(Role0).
positions55(['uast:Positions', Start, End]) :- position37(Start), position49(End).
object30(Obj) :- !,array30(Obj);value20(Obj);value46(Obj);value21(Obj);value6(Obj);identifier15(Obj);positions55(Obj).
object31(Obj) :- !,positions39(Obj);array19(Obj);value38(Obj);value28(Obj);value9(Obj);value0(Obj);array29(Obj);object30(Obj).
position50(['uast:Position', 2, 9, 96]).
position51(['uast:Position', 28, 9, 122]).
positions56(['uast:Positions', Start, End]) :- position50(Start), position51(End).
array31([Arg0,Arg1]) :- value29(Arg0),value30(Arg1).
positions57(['uast:Positions', Start, End]) :- position41(Start), position42(End).
identifier16(['uast:Identifier', 'n', Pos, [Role0]]) :- positions57(Pos),role0(Role0).
positions58(['uast:Positions', Start, End]) :- position41(Start), position42(End).
array32([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value19(Arg3).
object32(Obj) :- !,value21(Obj);value6(Obj);identifier16(Obj);positions58(Obj);array32(Obj);value20(Obj);value3(Obj).
positions59(['uast:Positions', Start, End]) :- position39(Start), position40(End).
array33([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4),value15(Arg5),value16(Arg6).
object33(Obj) :- !,value0(Obj);value10(Obj);positions59(Obj);array33(Obj);value17(Obj);value35(Obj);value3(Obj);value9(Obj).
positions60(['uast:Positions', Start, End]) :- position41(Start), position40(End).
array34([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value13(Arg0),value11(Arg1),value39(Arg2),value40(Arg3),value24(Arg4),value36(Arg5),value37(Arg6),value41(Arg7).
positions61(['uast:Positions', Start, End]) :- position39(Start), position40(End).
array35([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value12(Arg1),value5(Arg2),value13(Arg3),value14(Arg4).
object34(Obj) :- !,value9(Obj);value0(Obj);value10(Obj);positions61(Obj);array35(Obj);value17(Obj);value35(Obj);value3(Obj).
object35(Obj) :- !,object32(Obj);value26(Obj);value42(Obj);value9(Obj);value0(Obj);object33(Obj);positions60(Obj);array34(Obj);value3(Obj);object34(Obj).
positions62(['uast:Positions', Start, End]) :- position43(Start), position44(End).
identifier17(['uast:Identifier', 'b', Pos, [Role0]]) :- positions62(Pos),role0(Role0).
positions63(['uast:Positions', Start, End]) :- position43(Start), position44(End).
array36([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value18(Arg1),value36(Arg2),value37(Arg3),value41(Arg4).
object36(Obj) :- !,value21(Obj);value6(Obj);identifier17(Obj);positions63(Obj);array36(Obj);value20(Obj);value28(Obj).
positions64(['uast:Positions', Start, End]) :- position45(Start), position48(End).
positions65(['uast:Positions', Start, End]) :- position47(Start), position48(End).
identifier18(['uast:Identifier', 'b', Pos, [Role0]]) :- positions65(Pos),role0(Role0).
positions66(['uast:Positions', Start, End]) :- position47(Start), position48(End).
array37([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value11(Arg0),value18(Arg1),value13(Arg2),value14(Arg3),value15(Arg4),value16(Arg5).
object37(Obj) :- !,value21(Obj);value6(Obj);identifier18(Obj);positions66(Obj);array37(Obj);value20(Obj);value28(Obj).
array38([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value19(Arg3).
positions67(['uast:Positions', Start, End]) :- position45(Start), position46(End).
identifier19(['uast:Identifier', 'a', Pos, [Role0]]) :- positions67(Pos),role0(Role0).
positions68(['uast:Positions', Start, End]) :- position45(Start), position46(End).
object38(Obj) :- !,array38(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier19(Obj);positions68(Obj).
positions69(['uast:Positions', Start, End]) :- position47(Start), position48(End).
array39([Arg0,Arg1,Arg2,Arg3]) :- value11(Arg0),value18(Arg1),value13(Arg2),value14(Arg3).
positions70(['uast:Positions', Start, End]) :- position47(Start), position48(End).
identifier20(['uast:Identifier', 'b', Pos, [Role0]]) :- positions70(Pos),role0(Role0).
object39(Obj) :- !,positions69(Obj);array39(Obj);value20(Obj);value28(Obj);value21(Obj);value6(Obj);identifier20(Obj).
array40([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value13(Arg0),value11(Arg1),value39(Arg2),value44(Arg3),value24(Arg4),value36(Arg5),value37(Arg6),value41(Arg7).
object40(Obj) :- !,positions64(Obj);object37(Obj);object38(Obj);object39(Obj);array40(Obj);value26(Obj);value43(Obj);value28(Obj);value9(Obj);value0(Obj).
array41([Arg0,Arg1,Arg2]) :- object35(Arg0),object36(Arg1),object40(Arg2).
positions71(['uast:Positions', Start, End]) :- position37(Start), position49(End).
identifier21(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions71(Pos),role0(Role0).
positions72(['uast:Positions', Start, End]) :- position37(Start), position49(End).
array42([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value11(Arg0),value18(Arg1),value36(Arg2),value37(Arg3),value45(Arg4).
object41(Obj) :- !,identifier21(Obj);positions72(Obj);array42(Obj);value20(Obj);value46(Obj);value21(Obj);value6(Obj).
positions73(['uast:Positions', Start, End]) :- position37(Start), position38(End).
array43([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value36(Arg0),value37(Arg1),value11(Arg2),value30(Arg3),value32(Arg4).
object42(Obj) :- !,value38(Obj);value28(Obj);value9(Obj);value0(Obj);array41(Obj);object41(Obj);positions73(Obj);array43(Obj).
object43(Obj) :- !,object31(Obj);positions56(Obj);array31(Obj);value31(Obj);object42(Obj).
block2(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions14(Pos),object12(Stmt0),object20(Stmt1),object43(Stmt2).
positions74(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block2(Body),positions74(Pos).
positions75(['uast:Positions', _, _]).
identifier22(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions75(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier22(Name),function0(Node),positions1(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions0(Pos),object1(Node0),alias0(Node1).
array44([Arg0]) :- function_group0(Arg0).
array45([]).
position52(['uast:Position', 1, 11, 125]).
positions76(['uast:Positions', Start, End]) :- position0(Start), position52(End).
value47('File').
value48('Module').
array46([Arg0,Arg1]) :- value47(Arg0),value48(Arg1).
value49('cpp:CPPASTTranslationUnit').
array47([]).
object44(Obj) :- !,array44(Obj);array45(Obj);positions76(Obj);array46(Obj);value49(Obj);array47(Obj).

% value(Val).
value(X) :- value0(X);value1(X);value2(X);value3(X);value4(X);value5(X);value6(X);value7(X);value8(X);value9(X);value10(X);value11(X);value12(X);value13(X);value14(X);value15(X);value16(X);value17(X);value18(X);value19(X);value20(X);value21(X);value22(X);value23(X);value24(X);value25(X);value26(X);value27(X);value28(X);value29(X);value30(X);value31(X);value32(X);value33(X);value34(X);value35(X);value36(X);value37(X);value38(X);value39(X);value40(X);value41(X);value42(X);value43(X);value44(X);value45(X);value46(X);value47(X);value48(X);value49(X).

% array([Arguments]).
array(X) :- array0(X);array1(X);array2(X);array3(X);array4(X);array5(X);array6(X);array7(X);array8(X);array9(X);array10(X);array11(X);array12(X);array13(X);array14(X);array15(X);array16(X);array17(X);array18(X);array19(X);array20(X);array21(X);array22(X);array23(X);array24(X);array25(X);array26(X);array27(X);array28(X);array29(X);array30(X);array31(X);array32(X);array33(X);array34(X);array35(X);array36(X);array37(X);array38(X);array39(X);array40(X);array41(X);array42(X);array43(X);array44(X);array45(X);array46(X);array47(X).

% object(Obj).
object(X) :- object0(X);object1(X);object2(X);object3(X);object4(X);object5(X);object6(X);object7(X);object8(X);object9(X);object10(X);object11(X);object12(X);object13(X);object14(X);object15(X);object16(X);object17(X);object18(X);object19(X);object20(X);object21(X);object22(X);object23(X);object24(X);object25(X);object26(X);object27(X);object28(X);object29(X);object30(X);object31(X);object32(X);object33(X);object34(X);object35(X);object36(X);object37(X);object38(X);object39(X);object40(X);object41(X);object42(X);object43(X);object44(X).

% role(Name).
role(X) :- role0(X).

% position([Type, Col, Line, Offset]).
position(X) :- position0(X);position1(X);position2(X);position3(X);position4(X);position5(X);position6(X);position7(X);position8(X);position9(X);position10(X);position11(X);position12(X);position13(X);position14(X);position15(X);position16(X);position17(X);position18(X);position19(X);position20(X);position21(X);position22(X);position23(X);position24(X);position25(X);position26(X);position27(X);position28(X);position29(X);position30(X);position31(X);position32(X);position33(X);position34(X);position35(X);position36(X);position37(X);position38(X);position39(X);position40(X);position41(X);position42(X);position43(X);position44(X);position45(X);position46(X);position47(X);position48(X);position49(X);position50(X);position51(X);position52(X).

% positions([Type, Start, End]).
positions(X) :- positions0(X);positions1(X);positions2(X);positions3(X);positions4(X);positions5(X);positions6(X);positions7(X);positions8(X);positions9(X);positions10(X);positions11(X);positions12(X);positions13(X);positions14(X);positions15(X);positions16(X);positions17(X);positions18(X);positions19(X);positions20(X);positions21(X);positions22(X);positions23(X);positions24(X);positions25(X);positions26(X);positions27(X);positions28(X);positions29(X);positions30(X);positions31(X);positions32(X);positions33(X);positions34(X);positions35(X);positions36(X);positions37(X);positions38(X);positions39(X);positions40(X);positions41(X);positions42(X);positions43(X);positions44(X);positions45(X);positions46(X);positions47(X);positions48(X);positions49(X);positions50(X);positions51(X);positions52(X);positions53(X);positions54(X);positions55(X);positions56(X);positions57(X);positions58(X);positions59(X);positions60(X);positions61(X);positions62(X);positions63(X);positions64(X);positions65(X);positions66(X);positions67(X);positions68(X);positions69(X);positions70(X);positions71(X);positions72(X);positions73(X);positions74(X);positions75(X);positions76(X).

% identifier([Type, Name, Pos, [Roles]]).
identifier(X) :- identifier0(X);identifier1(X);identifier2(X);identifier3(X);identifier4(X);identifier5(X);identifier6(X);identifier7(X);identifier8(X);identifier9(X);identifier10(X);identifier11(X);identifier12(X);identifier13(X);identifier14(X);identifier15(X);identifier16(X);identifier17(X);identifier18(X);identifier19(X);identifier20(X);identifier21(X);identifier22(X).

% qualified_identifier([Type, [Names], Pos]).
qualified_identifier(_) :- fail.

% comment([Type, Prefix, Suffix, Tab, Text, Block, Pos]).
comment(_) :- fail.

% group([Type, [Nodes], Pos]).
group(_) :- fail.

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X);block1(X);block2(X).

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
