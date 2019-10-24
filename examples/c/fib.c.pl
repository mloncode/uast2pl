position0(['uast:Position', 1, 1, 0]).
position1(['uast:Position', 1, 11, 125]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
value0('File').
value1('Module').
array0([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
value2('cpp:CPPASTTranslationUnit').
array1([]).
position2(['uast:Position', 2, 10, 124]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position2(End).
object0(_).
object1(Obj) :- object0(Obj), !.
positions2(['uast:Positions', _, _]).
positions3(['uast:Positions', _, _]).
position3(['uast:Position', 14, 1, 13]).
position4(['uast:Position', 15, 1, 14]).
positions4(['uast:Positions', Start, End]) :- position3(Start), position4(End).
role0('Identifier').
identifier0(['uast:Identifier', 'n', Pos, [Role0]]) :- positions4(Pos),role0(Role0).
value3('Type').
value4('Number').
array2([Arg0,Arg1]) :- value3(Arg0),value4(Arg1).
value5(false).
value6('unspecified').
value7('cpp:CPPASTSimpleDeclSpecifier').
value8('int').
position5(['uast:Position', 10, 1, 9]).
position6(['uast:Position', 13, 1, 12]).
positions5(['uast:Positions', Start, End]) :- position5(Start), position6(End).
object2(Obj) :- array2(Obj), !.
object2(Obj) :- value5(Obj), !.
object2(Obj) :- value6(Obj), !.
object2(Obj) :- value7(Obj), !.
object2(Obj) :- value8(Obj), !.
object2(Obj) :- positions5(Obj), !.
positions6(['uast:Positions', _, _]).
argument0(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier0(Name),object2(Type),positions6(Pos).
position7(['uast:Position', 22, 1, 21]).
position8(['uast:Position', 23, 1, 22]).
positions7(['uast:Positions', Start, End]) :- position7(Start), position8(End).
identifier1(['uast:Identifier', 'a', Pos, [Role0]]) :- positions7(Pos),role0(Role0).
value9('unespecified').
value10(true).
position9(['uast:Position', 17, 1, 16]).
position10(['uast:Position', 21, 1, 20]).
positions8(['uast:Positions', Start, End]) :- position9(Start), position10(End).
array3([Arg0]) :- value3(Arg0).
object3(Obj) :- value10(Obj), !.
object3(Obj) :- positions8(Obj), !.
object3(Obj) :- array3(Obj), !.
object3(Obj) :- value7(Obj), !.
object3(Obj) :- value5(Obj), !.
object3(Obj) :- value6(Obj), !.
object3(Obj) :- value9(Obj), !.
positions9(['uast:Positions', _, _]).
argument1(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier1(Name),object3(Type),positions9(Pos).
position11(['uast:Position', 30, 1, 29]).
position12(['uast:Position', 31, 1, 30]).
positions10(['uast:Positions', Start, End]) :- position11(Start), position12(End).
identifier2(['uast:Identifier', 'b', Pos, [Role0]]) :- positions10(Pos),role0(Role0).
position13(['uast:Position', 25, 1, 24]).
position14(['uast:Position', 29, 1, 28]).
positions11(['uast:Positions', Start, End]) :- position13(Start), position14(End).
array4([Arg0]) :- value3(Arg0).
object4(Obj) :- value10(Obj), !.
object4(Obj) :- value6(Obj), !.
object4(Obj) :- positions11(Obj), !.
object4(Obj) :- array4(Obj), !.
object4(Obj) :- value9(Obj), !.
object4(Obj) :- value7(Obj), !.
object4(Obj) :- value5(Obj), !.
positions12(['uast:Positions', _, _]).
argument2(['uast:Argument', Name, Type, _, false, false, false, Pos]) :- identifier2(Name),object4(Type),positions12(Pos).
positions13(['uast:Positions', _, _]).
identifier3(['uast:Identifier', 'unespecified', Pos, [Role0]]) :- positions13(Pos),role0(Role0).
positions14(['uast:Positions', _, _]).
argument3(['uast:Argument', _, Type, _, false, false, false, Pos]) :- identifier3(Type),positions14(Pos).
function_type0(['uast:FunctionType', [Arg0,Arg1,Arg2], [Ret0], Pos]) :- argument0(Arg0),argument1(Arg1),argument2(Arg2),argument3(Ret0),positions3(Pos).
position15(['uast:Position', 33, 1, 32]).
positions15(['uast:Positions', Start, End]) :- position15(Start), position2(End).
value11('If').
value12('Statement').
array5([Arg0,Arg1]) :- value11(Arg0),value12(Arg1).
value13('cpp:CPPASTIfStatement').
value14('==').
value15('PRVALUE').
value16('integer_constant').
position16(['uast:Position', 11, 2, 44]).
position17(['uast:Position', 12, 2, 45]).
positions16(['uast:Positions', Start, End]) :- position16(Start), position17(End).
value17('Expression').
value18('Literal').
value19('Binary').
value20('Right').
array6([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4).
value21('cpp:CPPASTLiteralExpression').
value22('0').
object5(Obj) :- value15(Obj), !.
object5(Obj) :- value5(Obj), !.
object5(Obj) :- value16(Obj), !.
object5(Obj) :- positions16(Obj), !.
object5(Obj) :- array6(Obj), !.
object5(Obj) :- value21(Obj), !.
object5(Obj) :- value22(Obj), !.
object5(Obj) :- value8(Obj), !.
value23('cpp:CPPASTBinaryExpression').
value24('Relational').
value25('Equal').
value26('Operator').
array7([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value19(Arg0),value17(Arg1),value24(Arg2),value25(Arg3),value26(Arg4).
value27('bool').
positions17(['uast:Positions', Start, End]) :- position16(Start), position17(End).
value28('Initialization').
value29('Incomplete').
array8([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4),value28(Arg5),value29(Arg6).
object6(Obj) :- array8(Obj), !.
object6(Obj) :- value21(Obj), !.
object6(Obj) :- value22(Obj), !.
object6(Obj) :- value8(Obj), !.
object6(Obj) :- value15(Obj), !.
object6(Obj) :- value5(Obj), !.
object6(Obj) :- value16(Obj), !.
object6(Obj) :- positions17(Obj), !.
position18(['uast:Position', 6, 2, 39]).
position19(['uast:Position', 7, 2, 40]).
positions18(['uast:Positions', Start, End]) :- position18(Start), position19(End).
value30('Variable').
value31('Left').
array9([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value31(Arg3).
value32('cpp:CPPASTIdExpression').
value33('LVALUE').
positions19(['uast:Positions', Start, End]) :- position18(Start), position19(End).
identifier4(['uast:Identifier', 'n', Pos, [Role0]]) :- positions19(Pos),role0(Role0).
object7(Obj) :- positions18(Obj), !.
object7(Obj) :- array9(Obj), !.
object7(Obj) :- value32(Obj), !.
object7(Obj) :- value8(Obj), !.
object7(Obj) :- value33(Obj), !.
object7(Obj) :- value10(Obj), !.
object7(Obj) :- identifier4(Obj), !.
positions20(['uast:Positions', Start, End]) :- position18(Start), position17(End).
object8(Obj) :- value15(Obj), !.
object8(Obj) :- array7(Obj), !.
object8(Obj) :- value5(Obj), !.
object8(Obj) :- object7(Obj), !.
object8(Obj) :- positions20(Obj), !.
object8(Obj) :- value14(Obj), !.
object8(Obj) :- object5(Obj), !.
object8(Obj) :- value23(Obj), !.
object8(Obj) :- value27(Obj), !.
object8(Obj) :- object6(Obj), !.
position20(['uast:Position', 14, 2, 47]).
position21(['uast:Position', 3, 4, 63]).
positions21(['uast:Positions', Start, End]) :- position20(Start), position21(End).
value34('cpp:CPPASTReturnStatement').
position22(['uast:Position', 10, 3, 58]).
position23(['uast:Position', 11, 3, 59]).
positions22(['uast:Positions', Start, End]) :- position22(Start), position23(End).
identifier5(['uast:Identifier', 'a', Pos, [Role0]]) :- positions22(Pos),role0(Role0).
positions23(['uast:Positions', Start, End]) :- position22(Start), position23(End).
value35('Return').
value36('Value').
array10([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value35(Arg2),value36(Arg3).
value37('long int').
object9(Obj) :- value10(Obj), !.
object9(Obj) :- identifier5(Obj), !.
object9(Obj) :- positions23(Obj), !.
object9(Obj) :- array10(Obj), !.
object9(Obj) :- value32(Obj), !.
object9(Obj) :- value37(Obj), !.
object9(Obj) :- value33(Obj), !.
array11([Arg0,Arg1]) :- value17(Arg0),value30(Arg1).
positions24(['uast:Positions', Start, End]) :- position22(Start), position23(End).
identifier6(['uast:Identifier', 'a', Pos, [Role0]]) :- positions24(Pos),role0(Role0).
positions25(['uast:Positions', Start, End]) :- position22(Start), position23(End).
object10(Obj) :- identifier6(Obj), !.
object10(Obj) :- positions25(Obj), !.
object10(Obj) :- array11(Obj), !.
object10(Obj) :- value32(Obj), !.
object10(Obj) :- value37(Obj), !.
object10(Obj) :- value33(Obj), !.
object10(Obj) :- value10(Obj), !.
position24(['uast:Position', 3, 3, 51]).
position25(['uast:Position', 12, 3, 60]).
positions26(['uast:Positions', Start, End]) :- position24(Start), position25(End).
array12([Arg0,Arg1]) :- value12(Arg0),value35(Arg1).
object11(Obj) :- positions26(Obj), !.
object11(Obj) :- array12(Obj), !.
object11(Obj) :- value34(Obj), !.
object11(Obj) :- object9(Obj), !.
object11(Obj) :- object10(Obj), !.
block0(['uast:Block', [Stmt0], Pos]) :- positions21(Pos),object11(Stmt0).
position26(['uast:Position', 2, 2, 35]).
positions27(['uast:Positions', Start, End]) :- position26(Start), position21(End).
object12(Obj) :- array5(Obj), !.
object12(Obj) :- value13(Obj), !.
object12(Obj) :- object8(Obj), !.
object12(Obj) :- block0(Obj), !.
object12(Obj) :- positions27(Obj), !.
array13([Arg0,Arg1]) :- value11(Arg0),value12(Arg1).
position27(['uast:Position', 6, 5, 69]).
position28(['uast:Position', 7, 5, 70]).
positions28(['uast:Positions', Start, End]) :- position27(Start), position28(End).
array14([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value31(Arg3).
positions29(['uast:Positions', Start, End]) :- position27(Start), position28(End).
identifier7(['uast:Identifier', 'n', Pos, [Role0]]) :- positions29(Pos),role0(Role0).
object13(Obj) :- array14(Obj), !.
object13(Obj) :- value32(Obj), !.
object13(Obj) :- value8(Obj), !.
object13(Obj) :- value33(Obj), !.
object13(Obj) :- value10(Obj), !.
object13(Obj) :- identifier7(Obj), !.
object13(Obj) :- positions28(Obj), !.
value38('1').
position29(['uast:Position', 11, 5, 74]).
position30(['uast:Position', 12, 5, 75]).
positions30(['uast:Positions', Start, End]) :- position29(Start), position30(End).
array15([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4).
object14(Obj) :- value5(Obj), !.
object14(Obj) :- value16(Obj), !.
object14(Obj) :- positions30(Obj), !.
object14(Obj) :- array15(Obj), !.
object14(Obj) :- value21(Obj), !.
object14(Obj) :- value38(Obj), !.
object14(Obj) :- value8(Obj), !.
object14(Obj) :- value15(Obj), !.
positions31(['uast:Positions', Start, End]) :- position29(Start), position30(End).
array16([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4),value28(Arg5),value29(Arg6).
object15(Obj) :- positions31(Obj), !.
object15(Obj) :- array16(Obj), !.
object15(Obj) :- value21(Obj), !.
object15(Obj) :- value38(Obj), !.
object15(Obj) :- value8(Obj), !.
object15(Obj) :- value15(Obj), !.
object15(Obj) :- value5(Obj), !.
object15(Obj) :- value16(Obj), !.
positions32(['uast:Positions', Start, End]) :- position27(Start), position30(End).
array17([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value19(Arg0),value17(Arg1),value24(Arg2),value25(Arg3),value26(Arg4).
object16(Obj) :- object14(Obj), !.
object16(Obj) :- value5(Obj), !.
object16(Obj) :- value14(Obj), !.
object16(Obj) :- value15(Obj), !.
object16(Obj) :- value27(Obj), !.
object16(Obj) :- object13(Obj), !.
object16(Obj) :- object15(Obj), !.
object16(Obj) :- positions32(Obj), !.
object16(Obj) :- array17(Obj), !.
object16(Obj) :- value23(Obj), !.
position31(['uast:Position', 14, 5, 77]).
position32(['uast:Position', 3, 7, 93]).
positions33(['uast:Positions', Start, End]) :- position31(Start), position32(End).
position33(['uast:Position', 3, 6, 81]).
position34(['uast:Position', 12, 6, 90]).
positions34(['uast:Positions', Start, End]) :- position33(Start), position34(End).
array18([Arg0,Arg1]) :- value12(Arg0),value35(Arg1).
position35(['uast:Position', 10, 6, 88]).
position36(['uast:Position', 11, 6, 89]).
positions35(['uast:Positions', Start, End]) :- position35(Start), position36(End).
identifier8(['uast:Identifier', 'b', Pos, [Role0]]) :- positions35(Pos),role0(Role0).
positions36(['uast:Positions', Start, End]) :- position35(Start), position36(End).
array19([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value35(Arg2),value36(Arg3).
object17(Obj) :- positions36(Obj), !.
object17(Obj) :- array19(Obj), !.
object17(Obj) :- value32(Obj), !.
object17(Obj) :- value37(Obj), !.
object17(Obj) :- value33(Obj), !.
object17(Obj) :- value10(Obj), !.
object17(Obj) :- identifier8(Obj), !.
positions37(['uast:Positions', Start, End]) :- position35(Start), position36(End).
array20([Arg0,Arg1]) :- value17(Arg0),value30(Arg1).
positions38(['uast:Positions', Start, End]) :- position35(Start), position36(End).
identifier9(['uast:Identifier', 'b', Pos, [Role0]]) :- positions38(Pos),role0(Role0).
object18(Obj) :- value37(Obj), !.
object18(Obj) :- value33(Obj), !.
object18(Obj) :- value10(Obj), !.
object18(Obj) :- identifier9(Obj), !.
object18(Obj) :- positions37(Obj), !.
object18(Obj) :- array20(Obj), !.
object18(Obj) :- value32(Obj), !.
object19(Obj) :- object18(Obj), !.
object19(Obj) :- positions34(Obj), !.
object19(Obj) :- array18(Obj), !.
object19(Obj) :- value34(Obj), !.
object19(Obj) :- object17(Obj), !.
block1(['uast:Block', [Stmt0], Pos]) :- positions33(Pos),object19(Stmt0).
position37(['uast:Position', 2, 5, 65]).
positions39(['uast:Positions', Start, End]) :- position37(Start), position32(End).
object20(Obj) :- value13(Obj), !.
object20(Obj) :- object16(Obj), !.
object20(Obj) :- block1(Obj), !.
object20(Obj) :- positions39(Obj), !.
object20(Obj) :- array13(Obj), !.
position38(['uast:Position', 9, 9, 103]).
position39(['uast:Position', 27, 9, 121]).
positions40(['uast:Positions', Start, End]) :- position38(Start), position39(End).
value39('Function').
value40('Call').
array21([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value39(Arg0),value40(Arg1),value17(Arg2),value35(Arg3),value36(Arg4).
value41('cpp:CPPASTFunctionCallExpression').
position40(['uast:Position', 15, 9, 109]).
position41(['uast:Position', 16, 9, 110]).
positions41(['uast:Positions', Start, End]) :- position40(Start), position41(End).
array22([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4),value28(Arg5),value29(Arg6).
object21(Obj) :- value38(Obj), !.
object21(Obj) :- value8(Obj), !.
object21(Obj) :- value15(Obj), !.
object21(Obj) :- value5(Obj), !.
object21(Obj) :- value16(Obj), !.
object21(Obj) :- positions41(Obj), !.
object21(Obj) :- array22(Obj), !.
object21(Obj) :- value21(Obj), !.
position42(['uast:Position', 13, 9, 107]).
position43(['uast:Position', 14, 9, 108]).
positions42(['uast:Positions', Start, End]) :- position42(Start), position43(End).
identifier10(['uast:Identifier', 'n', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
positions43(['uast:Positions', Start, End]) :- position42(Start), position43(End).
array23([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value31(Arg3).
object22(Obj) :- value8(Obj), !.
object22(Obj) :- value33(Obj), !.
object22(Obj) :- value10(Obj), !.
object22(Obj) :- identifier10(Obj), !.
object22(Obj) :- positions43(Obj), !.
object22(Obj) :- array23(Obj), !.
object22(Obj) :- value32(Obj), !.
positions44(['uast:Positions', Start, End]) :- position42(Start), position41(End).
value42('Arithmetic').
value43('Substract').
value44('Argument').
array24([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value19(Arg0),value17(Arg1),value42(Arg2),value43(Arg3),value26(Arg4),value39(Arg5),value40(Arg6),value44(Arg7).
value45('-').
positions45(['uast:Positions', Start, End]) :- position40(Start), position41(End).
array25([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4).
object23(Obj) :- value38(Obj), !.
object23(Obj) :- value8(Obj), !.
object23(Obj) :- value15(Obj), !.
object23(Obj) :- value5(Obj), !.
object23(Obj) :- value16(Obj), !.
object23(Obj) :- positions45(Obj), !.
object23(Obj) :- array25(Obj), !.
object23(Obj) :- value21(Obj), !.
object24(Obj) :- object21(Obj), !.
object24(Obj) :- positions44(Obj), !.
object24(Obj) :- value23(Obj), !.
object24(Obj) :- value45(Obj), !.
object24(Obj) :- value5(Obj), !.
object24(Obj) :- object22(Obj), !.
object24(Obj) :- array24(Obj), !.
object24(Obj) :- value15(Obj), !.
object24(Obj) :- object23(Obj), !.
object24(Obj) :- value8(Obj), !.
position44(['uast:Position', 18, 9, 112]).
position45(['uast:Position', 19, 9, 113]).
positions46(['uast:Positions', Start, End]) :- position44(Start), position45(End).
array26([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value30(Arg1),value39(Arg2),value40(Arg3),value44(Arg4).
positions47(['uast:Positions', Start, End]) :- position44(Start), position45(End).
identifier11(['uast:Identifier', 'b', Pos, [Role0]]) :- positions47(Pos),role0(Role0).
object25(Obj) :- array26(Obj), !.
object25(Obj) :- value32(Obj), !.
object25(Obj) :- value37(Obj), !.
object25(Obj) :- value33(Obj), !.
object25(Obj) :- value10(Obj), !.
object25(Obj) :- identifier11(Obj), !.
object25(Obj) :- positions46(Obj), !.
value46('Add').
array27([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value19(Arg0),value17(Arg1),value42(Arg2),value46(Arg3),value26(Arg4),value39(Arg5),value40(Arg6),value44(Arg7).
position46(['uast:Position', 25, 9, 119]).
position47(['uast:Position', 26, 9, 120]).
positions48(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier12(['uast:Identifier', 'b', Pos, [Role0]]) :- positions48(Pos),role0(Role0).
positions49(['uast:Positions', Start, End]) :- position46(Start), position47(End).
array28([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value17(Arg0),value30(Arg1),value19(Arg2),value20(Arg3),value28(Arg4),value29(Arg5).
object26(Obj) :- value37(Obj), !.
object26(Obj) :- value33(Obj), !.
object26(Obj) :- value10(Obj), !.
object26(Obj) :- identifier12(Obj), !.
object26(Obj) :- positions49(Obj), !.
object26(Obj) :- array28(Obj), !.
object26(Obj) :- value32(Obj), !.
positions50(['uast:Positions', Start, End]) :- position46(Start), position47(End).
array29([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value20(Arg3).
positions51(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier13(['uast:Identifier', 'b', Pos, [Role0]]) :- positions51(Pos),role0(Role0).
object27(Obj) :- value33(Obj), !.
object27(Obj) :- value10(Obj), !.
object27(Obj) :- identifier13(Obj), !.
object27(Obj) :- positions50(Obj), !.
object27(Obj) :- array29(Obj), !.
object27(Obj) :- value32(Obj), !.
object27(Obj) :- value37(Obj), !.
position48(['uast:Position', 21, 9, 115]).
positions52(['uast:Positions', Start, End]) :- position48(Start), position47(End).
value47('+').
position49(['uast:Position', 22, 9, 116]).
positions53(['uast:Positions', Start, End]) :- position48(Start), position49(End).
identifier14(['uast:Identifier', 'a', Pos, [Role0]]) :- positions53(Pos),role0(Role0).
positions54(['uast:Positions', Start, End]) :- position48(Start), position49(End).
array30([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value31(Arg3).
object28(Obj) :- identifier14(Obj), !.
object28(Obj) :- positions54(Obj), !.
object28(Obj) :- array30(Obj), !.
object28(Obj) :- value32(Obj), !.
object28(Obj) :- value37(Obj), !.
object28(Obj) :- value33(Obj), !.
object28(Obj) :- value10(Obj), !.
object29(Obj) :- array27(Obj), !.
object29(Obj) :- object26(Obj), !.
object29(Obj) :- object27(Obj), !.
object29(Obj) :- value23(Obj), !.
object29(Obj) :- value5(Obj), !.
object29(Obj) :- value15(Obj), !.
object29(Obj) :- positions52(Obj), !.
object29(Obj) :- value47(Obj), !.
object29(Obj) :- value37(Obj), !.
object29(Obj) :- object28(Obj), !.
array31([Arg0,Arg1,Arg2]) :- object24(Arg0),object25(Arg1),object29(Arg2).
position50(['uast:Position', 12, 9, 106]).
positions55(['uast:Positions', Start, End]) :- position38(Start), position50(End).
identifier15(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions55(Pos),role0(Role0).
positions56(['uast:Positions', Start, End]) :- position38(Start), position50(End).
value48('Name').
array32([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value30(Arg1),value39(Arg2),value40(Arg3),value48(Arg4).
value49('long int (int, long int, long int)').
object30(Obj) :- array32(Obj), !.
object30(Obj) :- value32(Obj), !.
object30(Obj) :- value49(Obj), !.
object30(Obj) :- value33(Obj), !.
object30(Obj) :- value10(Obj), !.
object30(Obj) :- identifier15(Obj), !.
object30(Obj) :- positions56(Obj), !.
object31(Obj) :- value37(Obj), !.
object31(Obj) :- value15(Obj), !.
object31(Obj) :- value5(Obj), !.
object31(Obj) :- array31(Obj), !.
object31(Obj) :- object30(Obj), !.
object31(Obj) :- positions40(Obj), !.
object31(Obj) :- array21(Obj), !.
object31(Obj) :- value41(Obj), !.
positions57(['uast:Positions', Start, End]) :- position40(Start), position41(End).
array33([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4),value28(Arg5),value29(Arg6).
object32(Obj) :- array33(Obj), !.
object32(Obj) :- value21(Obj), !.
object32(Obj) :- value38(Obj), !.
object32(Obj) :- value8(Obj), !.
object32(Obj) :- value15(Obj), !.
object32(Obj) :- value5(Obj), !.
object32(Obj) :- value16(Obj), !.
object32(Obj) :- positions57(Obj), !.
positions58(['uast:Positions', Start, End]) :- position42(Start), position41(End).
array34([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value19(Arg0),value17(Arg1),value42(Arg2),value43(Arg3),value26(Arg4),value39(Arg5),value40(Arg6),value44(Arg7).
positions59(['uast:Positions', Start, End]) :- position42(Start), position43(End).
identifier16(['uast:Identifier', 'n', Pos, [Role0]]) :- positions59(Pos),role0(Role0).
positions60(['uast:Positions', Start, End]) :- position42(Start), position43(End).
array35([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value31(Arg3).
object33(Obj) :- array35(Obj), !.
object33(Obj) :- value32(Obj), !.
object33(Obj) :- value8(Obj), !.
object33(Obj) :- value33(Obj), !.
object33(Obj) :- value10(Obj), !.
object33(Obj) :- identifier16(Obj), !.
object33(Obj) :- positions60(Obj), !.
positions61(['uast:Positions', Start, End]) :- position40(Start), position41(End).
array36([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value18(Arg1),value4(Arg2),value19(Arg3),value20(Arg4).
object34(Obj) :- value8(Obj), !.
object34(Obj) :- value15(Obj), !.
object34(Obj) :- value5(Obj), !.
object34(Obj) :- value16(Obj), !.
object34(Obj) :- positions61(Obj), !.
object34(Obj) :- array36(Obj), !.
object34(Obj) :- value21(Obj), !.
object34(Obj) :- value38(Obj), !.
object35(Obj) :- object32(Obj), !.
object35(Obj) :- value8(Obj), !.
object35(Obj) :- object33(Obj), !.
object35(Obj) :- object34(Obj), !.
object35(Obj) :- value5(Obj), !.
object35(Obj) :- positions58(Obj), !.
object35(Obj) :- array34(Obj), !.
object35(Obj) :- value45(Obj), !.
object35(Obj) :- value15(Obj), !.
object35(Obj) :- value23(Obj), !.
positions62(['uast:Positions', Start, End]) :- position44(Start), position45(End).
identifier17(['uast:Identifier', 'b', Pos, [Role0]]) :- positions62(Pos),role0(Role0).
positions63(['uast:Positions', Start, End]) :- position44(Start), position45(End).
array37([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value30(Arg1),value39(Arg2),value40(Arg3),value44(Arg4).
object36(Obj) :- value33(Obj), !.
object36(Obj) :- value10(Obj), !.
object36(Obj) :- identifier17(Obj), !.
object36(Obj) :- positions63(Obj), !.
object36(Obj) :- array37(Obj), !.
object36(Obj) :- value32(Obj), !.
object36(Obj) :- value37(Obj), !.
positions64(['uast:Positions', Start, End]) :- position48(Start), position47(End).
positions65(['uast:Positions', Start, End]) :- position48(Start), position49(End).
identifier18(['uast:Identifier', 'a', Pos, [Role0]]) :- positions65(Pos),role0(Role0).
positions66(['uast:Positions', Start, End]) :- position48(Start), position49(End).
array38([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value31(Arg3).
object37(Obj) :- array38(Obj), !.
object37(Obj) :- value32(Obj), !.
object37(Obj) :- value37(Obj), !.
object37(Obj) :- value33(Obj), !.
object37(Obj) :- value10(Obj), !.
object37(Obj) :- identifier18(Obj), !.
object37(Obj) :- positions66(Obj), !.
array39([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7]) :- value19(Arg0),value17(Arg1),value42(Arg2),value46(Arg3),value26(Arg4),value39(Arg5),value40(Arg6),value44(Arg7).
positions67(['uast:Positions', Start, End]) :- position46(Start), position47(End).
array40([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value17(Arg0),value30(Arg1),value19(Arg2),value20(Arg3),value28(Arg4),value29(Arg5).
positions68(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier19(['uast:Identifier', 'b', Pos, [Role0]]) :- positions68(Pos),role0(Role0).
object38(Obj) :- value33(Obj), !.
object38(Obj) :- value10(Obj), !.
object38(Obj) :- identifier19(Obj), !.
object38(Obj) :- positions67(Obj), !.
object38(Obj) :- array40(Obj), !.
object38(Obj) :- value32(Obj), !.
object38(Obj) :- value37(Obj), !.
positions69(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier20(['uast:Identifier', 'b', Pos, [Role0]]) :- positions69(Pos),role0(Role0).
positions70(['uast:Positions', Start, End]) :- position46(Start), position47(End).
array41([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value30(Arg1),value19(Arg2),value20(Arg3).
object39(Obj) :- value32(Obj), !.
object39(Obj) :- value37(Obj), !.
object39(Obj) :- value33(Obj), !.
object39(Obj) :- value10(Obj), !.
object39(Obj) :- identifier20(Obj), !.
object39(Obj) :- positions70(Obj), !.
object39(Obj) :- array41(Obj), !.
object40(Obj) :- value37(Obj), !.
object40(Obj) :- value5(Obj), !.
object40(Obj) :- object37(Obj), !.
object40(Obj) :- array39(Obj), !.
object40(Obj) :- value47(Obj), !.
object40(Obj) :- object38(Obj), !.
object40(Obj) :- object39(Obj), !.
object40(Obj) :- value23(Obj), !.
object40(Obj) :- value15(Obj), !.
object40(Obj) :- positions64(Obj), !.
array42([Arg0,Arg1,Arg2]) :- object35(Arg0),object36(Arg1),object40(Arg2).
array43([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value17(Arg0),value30(Arg1),value39(Arg2),value40(Arg3),value48(Arg4).
positions71(['uast:Positions', Start, End]) :- position38(Start), position50(End).
identifier21(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions71(Pos),role0(Role0).
positions72(['uast:Positions', Start, End]) :- position38(Start), position50(End).
object41(Obj) :- value49(Obj), !.
object41(Obj) :- value33(Obj), !.
object41(Obj) :- value10(Obj), !.
object41(Obj) :- identifier21(Obj), !.
object41(Obj) :- positions72(Obj), !.
object41(Obj) :- array43(Obj), !.
object41(Obj) :- value32(Obj), !.
positions73(['uast:Positions', Start, End]) :- position38(Start), position39(End).
array44([Arg0,Arg1,Arg2]) :- value39(Arg0),value40(Arg1),value17(Arg2).
object42(Obj) :- value5(Obj), !.
object42(Obj) :- array42(Obj), !.
object42(Obj) :- object41(Obj), !.
object42(Obj) :- positions73(Obj), !.
object42(Obj) :- array44(Obj), !.
object42(Obj) :- value41(Obj), !.
object42(Obj) :- value37(Obj), !.
object42(Obj) :- value15(Obj), !.
position51(['uast:Position', 2, 9, 96]).
position52(['uast:Position', 28, 9, 122]).
positions74(['uast:Positions', Start, End]) :- position51(Start), position52(End).
array45([Arg0,Arg1]) :- value12(Arg0),value35(Arg1).
object43(Obj) :- value34(Obj), !.
object43(Obj) :- object31(Obj), !.
object43(Obj) :- object42(Obj), !.
object43(Obj) :- positions74(Obj), !.
object43(Obj) :- array45(Obj), !.
block2(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions15(Pos),object12(Stmt0),object20(Stmt1),object43(Stmt2).
positions75(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block2(Body),positions75(Pos).
positions76(['uast:Positions', _, _]).
identifier22(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions76(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier22(Name),function0(Node),positions2(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions1(Pos),object1(Node0),alias0(Node1).
array46([Arg0]) :- function_group0(Arg0).
array47([]).
object44(Obj) :- array0(Obj), !.
object44(Obj) :- value2(Obj), !.
object44(Obj) :- array1(Obj), !.
object44(Obj) :- array46(Obj), !.
object44(Obj) :- array47(Obj), !.
object44(Obj) :- positions0(Obj), !.

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
