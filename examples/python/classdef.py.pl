positions0(['uast:Positions', _, _]).
value0('File').
value1('Module').
array0([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
value2('python:Module').
value3('python:ClassDef').
value4('Type').
value5('Declaration').
value6('Body').
array1([Arg0,Arg1,Arg2]) :- value4(Arg0),value5(Arg1),value6(Arg2).
value7('python:ClassDef.body').
position0(['uast:Position', 9, 2, 22]).
position1(['uast:Position', 17, 2, 30]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position1(End).
value8(false).
object0(_).
array2([]).
object1(Obj) :- value8(Obj), !.
object1(Obj) :- object0(Obj), !.
object1(Obj) :- array2(Obj), !.
positions2(['uast:Positions', _, _]).
positions3(['uast:Positions', _, _]).
position2(['uast:Position', 18, 2, 31]).
position3(['uast:Position', 22, 2, 35]).
positions4(['uast:Positions', Start, End]) :- position2(Start), position3(End).
role0('Identifier').
identifier0(['uast:Identifier', 'self', Pos, [Role0]]) :- positions4(Pos),role0(Role0).
positions5(['uast:Positions', Start, End]) :- position2(Start), position3(End).
argument0(['uast:Argument', Name, _, _, false, false, false, Pos]) :- identifier0(Name),positions5(Pos).
positions6(['uast:Positions', _, _]).
identifier1(['uast:Identifier', 'None', Pos, [Role0]]) :- positions6(Pos),role0(Role0).
positions7(['uast:Positions', _, _]).
argument1(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier1(Init),positions7(Pos).
function_type0(['uast:FunctionType', [Arg0], [Ret0], Pos]) :- argument0(Arg0),argument1(Ret0),positions3(Pos).
positions8(['uast:Positions', _, _]).
value9('Identifier').
value10('Expression').
value11('Qualified').
value12('Left').
array3([Arg0,Arg1,Arg2,Arg3]) :- value9(Arg0),value10(Arg1),value11(Arg2),value12(Arg3).
value13('python:QualifiedIdentifier').
value14('Store').
value15('python:BoxedName').
value16('Load').
position4(['uast:Position', 9, 3, 46]).
position5(['uast:Position', 13, 3, 50]).
positions9(['uast:Positions', Start, End]) :- position4(Start), position5(End).
identifier2(['uast:Identifier', 'self', Pos, [Role0]]) :- positions9(Pos),role0(Role0).
object2(Obj) :- value15(Obj), !.
object2(Obj) :- value16(Obj), !.
object2(Obj) :- identifier2(Obj), !.
value17('python:BoxedAttribute').
positions10(['uast:Positions', Start, _]) :- position4(Start).
identifier3(['uast:Identifier', '_a', Pos, [Role0]]) :- positions10(Pos),role0(Role0).
object3(Obj) :- value17(Obj), !.
object3(Obj) :- identifier3(Obj), !.
array4([Arg0,Arg1]) :- object2(Arg0),object3(Arg1).
position6(['uast:Position', 10, 3, 47]).
position7(['uast:Position', 14, 3, 51]).
positions11(['uast:Positions', Start, End]) :- position6(Start), position7(End).
object4(Obj) :- positions11(Obj), !.
object4(Obj) :- array3(Obj), !.
object4(Obj) :- value13(Obj), !.
object4(Obj) :- value14(Obj), !.
object4(Obj) :- array4(Obj), !.
array5([Arg0]) :- object4(Arg0).
position8(['uast:Position', 19, 3, 56]).
position9(['uast:Position', 20, 3, 57]).
positions12(['uast:Positions', Start, End]) :- position8(Start), position9(End).
value18('Literal').
value19('Number').
value20('Primitive').
value21('Right').
array6([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value10(Arg0),value18(Arg1),value19(Arg2),value20(Arg3),value21(Arg4).
value22('python:Num').
value23(1).
object5(Obj) :- value22(Obj), !.
object5(Obj) :- value23(Obj), !.
object5(Obj) :- positions12(Obj), !.
object5(Obj) :- array6(Obj), !.
positions13(['uast:Positions', Start, _]) :- position4(Start).
value24('Binary').
value25('Assignment').
array7([Arg0,Arg1,Arg2]) :- value24(Arg0),value10(Arg1),value25(Arg2).
value26('python:Assign').
object6(Obj) :- array5(Obj), !.
object6(Obj) :- object5(Obj), !.
object6(Obj) :- positions13(Obj), !.
object6(Obj) :- array7(Obj), !.
object6(Obj) :- value26(Obj), !.
position10(['uast:Position', 13, 4, 70]).
position11(['uast:Position', 14, 4, 71]).
positions14(['uast:Positions', Start, End]) :- position10(Start), position11(End).
array8([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value10(Arg0),value18(Arg1),value19(Arg2),value20(Arg3),value21(Arg4).
value27(2).
object7(Obj) :- positions14(Obj), !.
object7(Obj) :- array8(Obj), !.
object7(Obj) :- value22(Obj), !.
object7(Obj) :- value27(Obj), !.
position12(['uast:Position', 9, 4, 66]).
positions15(['uast:Positions', Start, _]) :- position12(Start).
array9([Arg0,Arg1,Arg2]) :- value24(Arg0),value10(Arg1),value25(Arg2).
array10([Arg0]) :- value12(Arg0).
position13(['uast:Position', 10, 4, 67]).
positions16(['uast:Positions', Start, End]) :- position12(Start), position13(End).
identifier4(['uast:Identifier', 'b', Pos, [Role0]]) :- positions16(Pos),role0(Role0).
object8(Obj) :- array10(Obj), !.
object8(Obj) :- value15(Obj), !.
object8(Obj) :- value14(Obj), !.
object8(Obj) :- identifier4(Obj), !.
array11([Arg0]) :- object8(Arg0).
object9(Obj) :- value26(Obj), !.
object9(Obj) :- array11(Obj), !.
object9(Obj) :- object7(Obj), !.
object9(Obj) :- positions15(Obj), !.
object9(Obj) :- array9(Obj), !.
block0(['uast:Block', [Stmt0,Stmt1], Pos]) :- positions8(Pos),object6(Stmt0),object9(Stmt1).
positions17(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions17(Pos).
positions18(['uast:Positions', _, _]).
identifier5(['uast:Identifier', '__init__', Pos, [Role0]]) :- positions18(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier5(Name),function0(Node),positions2(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions1(Pos),object1(Node0),alias0(Node1).
position14(['uast:Position', 9, 6, 81]).
position15(['uast:Position', 15, 6, 87]).
positions19(['uast:Positions', Start, End]) :- position14(Start), position15(End).
object10(_).
array12([]).
object11(Obj) :- value8(Obj), !.
object11(Obj) :- object10(Obj), !.
object11(Obj) :- array12(Obj), !.
positions20(['uast:Positions', _, _]).
positions21(['uast:Positions', _, _]).
position16(['uast:Position', 16, 6, 88]).
position17(['uast:Position', 20, 6, 92]).
positions22(['uast:Positions', Start, End]) :- position16(Start), position17(End).
identifier6(['uast:Identifier', 'self', Pos, [Role0]]) :- positions22(Pos),role0(Role0).
positions23(['uast:Positions', Start, End]) :- position16(Start), position17(End).
argument2(['uast:Argument', Name, _, _, false, false, false, Pos]) :- identifier6(Name),positions23(Pos).
position18(['uast:Position', 22, 6, 94]).
position19(['uast:Position', 26, 6, 98]).
positions24(['uast:Positions', Start, End]) :- position18(Start), position19(End).
identifier7(['uast:Identifier', 'arg1', Pos, [Role0]]) :- positions24(Pos),role0(Role0).
positions25(['uast:Positions', Start, End]) :- position18(Start), position19(End).
argument3(['uast:Argument', Name, _, _, false, false, false, Pos]) :- identifier7(Name),positions25(Pos).
positions26(['uast:Positions', _, _]).
identifier8(['uast:Identifier', 'None', Pos, [Role0]]) :- positions26(Pos),role0(Role0).
positions27(['uast:Positions', _, _]).
argument4(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier8(Init),positions27(Pos).
function_type1(['uast:FunctionType', [Arg0,Arg1], [Ret0], Pos]) :- argument2(Arg0),argument3(Arg1),argument4(Ret0),positions21(Pos).
positions28(['uast:Positions', _, _]).
position20(['uast:Position', 9, 7, 109]).
position21(['uast:Position', 13, 7, 113]).
positions29(['uast:Positions', Start, End]) :- position20(Start), position21(End).
value28('Noop').
value29('Statement').
array13([Arg0,Arg1]) :- value28(Arg0),value29(Arg1).
value30('python:Pass').
value31('pass').
object12(Obj) :- positions29(Obj), !.
object12(Obj) :- array13(Obj), !.
object12(Obj) :- value30(Obj), !.
object12(Obj) :- value31(Obj), !.
block1(['uast:Block', [Stmt0], Pos]) :- positions28(Pos),object12(Stmt0).
positions30(['uast:Positions', _, _]).
function1(['uast:Function', FnType, Body, Pos]) :- function_type1(FnType),block1(Body),positions30(Pos).
positions31(['uast:Positions', _, _]).
identifier9(['uast:Identifier', 'method', Pos, [Role0]]) :- positions31(Pos),role0(Role0).
alias1(['uast:Alias', Name, Node, Pos]) :- identifier9(Name),function1(Node),positions20(Pos).
function_group1(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions19(Pos),object11(Node0),alias1(Node1).
position22(['uast:Position', 5, 9, 119]).
positions32(['uast:Positions', Start, _]) :- position22(Start).
object13(_).
position23(['uast:Position', 6, 9, 120]).
position24(['uast:Position', 14, 9, 128]).
positions33(['uast:Positions', Start, End]) :- position23(Start), position24(End).
identifier10(['uast:Identifier', 'property', Pos, [Role0]]) :- positions33(Pos),role0(Role0).
object14(Obj) :- value16(Obj), !.
object14(Obj) :- identifier10(Obj), !.
object14(Obj) :- value15(Obj), !.
array14([Arg0]) :- object14(Arg0).
object15(Obj) :- value8(Obj), !.
object15(Obj) :- object13(Obj), !.
object15(Obj) :- array14(Obj), !.
positions34(['uast:Positions', _, _]).
positions35(['uast:Positions', _, _]).
positions36(['uast:Positions', _, _]).
identifier11(['uast:Identifier', 'None', Pos, [Role0]]) :- positions36(Pos),role0(Role0).
positions37(['uast:Positions', _, _]).
argument5(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier11(Init),positions37(Pos).
function_type2(['uast:FunctionType', [], [Ret0], Pos]) :- argument5(Ret0),positions35(Pos).
positions38(['uast:Positions', _, _]).
position25(['uast:Position', 9, 11, 150]).
position26(['uast:Position', 15, 11, 156]).
positions39(['uast:Positions', Start, End]) :- position25(Start), position26(End).
value32('Return').
array15([Arg0,Arg1]) :- value32(Arg0),value29(Arg1).
value33('python:Return').
value34('return').
position27(['uast:Position', 16, 11, 157]).
position28(['uast:Position', 20, 11, 161]).
positions40(['uast:Positions', Start, End]) :- position27(Start), position28(End).
identifier12(['uast:Identifier', 'self', Pos, [Role0]]) :- positions40(Pos),role0(Role0).
array16([]).
position29(['uast:Position', 1, 8, 114]).
positions41(['uast:Positions', Start, End]) :- position29(Start), position29(End).
array17([Arg0]) :- value28(Arg0).
value35('python:PreviousNoops').
object16(Obj) :- array16(Obj), !.
object16(Obj) :- positions41(Obj), !.
object16(Obj) :- array17(Obj), !.
object16(Obj) :- value35(Obj), !.
object17(Obj) :- value15(Obj), !.
object17(Obj) :- value16(Obj), !.
object17(Obj) :- identifier12(Obj), !.
object17(Obj) :- object16(Obj), !.
positions42(['uast:Positions', Start, _]) :- position27(Start).
identifier13(['uast:Identifier', '_a', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
object18(Obj) :- value17(Obj), !.
object18(Obj) :- identifier13(Obj), !.
array18([Arg0,Arg1]) :- object17(Arg0),object18(Arg1).
position30(['uast:Position', 17, 11, 158]).
position31(['uast:Position', 21, 11, 162]).
positions43(['uast:Positions', Start, End]) :- position30(Start), position31(End).
array19([Arg0,Arg1,Arg2]) :- value9(Arg0),value10(Arg1),value11(Arg2).
object19(Obj) :- array19(Obj), !.
object19(Obj) :- value13(Obj), !.
object19(Obj) :- value16(Obj), !.
object19(Obj) :- array18(Obj), !.
object19(Obj) :- positions43(Obj), !.
object20(Obj) :- array15(Obj), !.
object20(Obj) :- value33(Obj), !.
object20(Obj) :- value34(Obj), !.
object20(Obj) :- object19(Obj), !.
object20(Obj) :- positions39(Obj), !.
block2(['uast:Block', [Stmt0], Pos]) :- positions38(Pos),object20(Stmt0).
positions44(['uast:Positions', _, _]).
function2(['uast:Function', FnType, Body, Pos]) :- function_type2(FnType),block2(Body),positions44(Pos).
positions45(['uast:Positions', _, _]).
identifier14(['uast:Identifier', 'a', Pos, [Role0]]) :- positions45(Pos),role0(Role0).
alias2(['uast:Alias', Name, Node, Pos]) :- identifier14(Name),function2(Node),positions34(Pos).
function_group2(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions32(Pos),object15(Node0),alias2(Node1).
position32(['uast:Position', 5, 13, 170]).
positions46(['uast:Positions', Start, _]) :- position32(Start).
object21(_).
position33(['uast:Position', 6, 13, 171]).
position34(['uast:Position', 7, 13, 172]).
positions47(['uast:Positions', Start, End]) :- position33(Start), position34(End).
identifier15(['uast:Identifier', 'a', Pos, [Role0]]) :- positions47(Pos),role0(Role0).
object22(Obj) :- identifier15(Obj), !.
object22(Obj) :- value15(Obj), !.
object22(Obj) :- value16(Obj), !.
positions48(['uast:Positions', Start, _]) :- position33(Start).
identifier16(['uast:Identifier', 'setter', Pos, [Role0]]) :- positions48(Pos),role0(Role0).
object23(Obj) :- value17(Obj), !.
object23(Obj) :- identifier16(Obj), !.
array20([Arg0,Arg1]) :- object22(Arg0),object23(Arg1).
position35(['uast:Position', 8, 13, 173]).
positions49(['uast:Positions', Start, End]) :- position34(Start), position35(End).
array21([Arg0,Arg1,Arg2]) :- value9(Arg0),value10(Arg1),value11(Arg2).
object24(Obj) :- value13(Obj), !.
object24(Obj) :- value16(Obj), !.
object24(Obj) :- array20(Obj), !.
object24(Obj) :- positions49(Obj), !.
object24(Obj) :- array21(Obj), !.
array22([Arg0]) :- object24(Arg0).
object25(Obj) :- value8(Obj), !.
object25(Obj) :- object21(Obj), !.
object25(Obj) :- array22(Obj), !.
positions50(['uast:Positions', _, _]).
positions51(['uast:Positions', _, _]).
position36(['uast:Position', 11, 14, 190]).
position37(['uast:Position', 15, 14, 194]).
positions52(['uast:Positions', Start, End]) :- position36(Start), position37(End).
identifier17(['uast:Identifier', 'newa', Pos, [Role0]]) :- positions52(Pos),role0(Role0).
positions53(['uast:Positions', Start, End]) :- position36(Start), position37(End).
argument6(['uast:Argument', Name, _, _, false, false, false, Pos]) :- identifier17(Name),positions53(Pos).
positions54(['uast:Positions', _, _]).
identifier18(['uast:Identifier', 'None', Pos, [Role0]]) :- positions54(Pos),role0(Role0).
positions55(['uast:Positions', _, _]).
argument7(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier18(Init),positions55(Pos).
function_type3(['uast:FunctionType', [Arg0], [Ret0], Pos]) :- argument6(Arg0),argument7(Ret0),positions51(Pos).
positions56(['uast:Positions', _, _]).
position38(['uast:Position', 9, 15, 205]).
positions57(['uast:Positions', Start, _]) :- position38(Start).
array23([Arg0,Arg1,Arg2]) :- value24(Arg0),value10(Arg1),value25(Arg2).
position39(['uast:Position', 13, 15, 209]).
positions58(['uast:Positions', Start, End]) :- position38(Start), position39(End).
identifier19(['uast:Identifier', 'self', Pos, [Role0]]) :- positions58(Pos),role0(Role0).
object26(Obj) :- value15(Obj), !.
object26(Obj) :- value16(Obj), !.
object26(Obj) :- identifier19(Obj), !.
positions59(['uast:Positions', Start, _]) :- position38(Start).
identifier20(['uast:Identifier', '_a', Pos, [Role0]]) :- positions59(Pos),role0(Role0).
object27(Obj) :- value17(Obj), !.
object27(Obj) :- identifier20(Obj), !.
array24([Arg0,Arg1]) :- object26(Arg0),object27(Arg1).
position40(['uast:Position', 10, 15, 206]).
position41(['uast:Position', 14, 15, 210]).
positions60(['uast:Positions', Start, End]) :- position40(Start), position41(End).
array25([Arg0,Arg1,Arg2,Arg3]) :- value9(Arg0),value10(Arg1),value11(Arg2),value12(Arg3).
object28(Obj) :- array24(Obj), !.
object28(Obj) :- positions60(Obj), !.
object28(Obj) :- array25(Obj), !.
object28(Obj) :- value13(Obj), !.
object28(Obj) :- value14(Obj), !.
array26([Arg0]) :- object28(Arg0).
position42(['uast:Position', 19, 15, 215]).
position43(['uast:Position', 23, 15, 219]).
positions61(['uast:Positions', Start, End]) :- position42(Start), position43(End).
identifier21(['uast:Identifier', 'newa', Pos, [Role0]]) :- positions61(Pos),role0(Role0).
array27([Arg0]) :- value21(Arg0).
object29(Obj) :- value15(Obj), !.
object29(Obj) :- value16(Obj), !.
object29(Obj) :- identifier21(Obj), !.
object29(Obj) :- array27(Obj), !.
object30(Obj) :- positions57(Obj), !.
object30(Obj) :- array23(Obj), !.
object30(Obj) :- value26(Obj), !.
object30(Obj) :- array26(Obj), !.
object30(Obj) :- object29(Obj), !.
block3(['uast:Block', [Stmt0], Pos]) :- positions56(Pos),object30(Stmt0).
positions62(['uast:Positions', _, _]).
function3(['uast:Function', FnType, Body, Pos]) :- function_type3(FnType),block3(Body),positions62(Pos).
positions63(['uast:Positions', _, _]).
identifier22(['uast:Identifier', 'a', Pos, [Role0]]) :- positions63(Pos),role0(Role0).
alias3(['uast:Alias', Name, Node, Pos]) :- identifier22(Name),function3(Node),positions50(Pos).
function_group3(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions46(Pos),object25(Node0),alias3(Node1).
array28([Arg0,Arg1,Arg2,Arg3]) :- function_group0(Arg0),function_group1(Arg1),function_group2(Arg2),function_group3(Arg3).
object31(Obj) :- array1(Obj), !.
object31(Obj) :- value7(Obj), !.
object31(Obj) :- array28(Obj), !.
value36('Animal').
value37('Base').
array29([Arg0,Arg1,Arg2]) :- value4(Arg0),value5(Arg1),value37(Arg2).
value38('python:ClassDef.bases').
array30([]).
object32(Obj) :- array29(Obj), !.
object32(Obj) :- value38(Obj), !.
object32(Obj) :- array30(Obj), !.
array31([]).
value39('Call').
value40('Incomplete').
array32([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value5(Arg1),value39(Arg2),value40(Arg3).
value41('python:ClassDef.decorator_list').
object33(Obj) :- array31(Obj), !.
object33(Obj) :- array32(Obj), !.
object33(Obj) :- value41(Obj), !.
array33([]).
position44(['uast:Position', 7, 1, 6]).
position45(['uast:Position', 13, 1, 12]).
positions64(['uast:Positions', Start, End]) :- position44(Start), position45(End).
array34([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value5(Arg1),value9(Arg2),value29(Arg3).
object34(Obj) :- object31(Obj), !.
object34(Obj) :- value36(Obj), !.
object34(Obj) :- object32(Obj), !.
object34(Obj) :- object33(Obj), !.
object34(Obj) :- array33(Obj), !.
object34(Obj) :- positions64(Obj), !.
object34(Obj) :- array34(Obj), !.
object34(Obj) :- value3(Obj), !.
position46(['uast:Position', 1, 17, 221]).
positions65(['uast:Positions', Start, _]) :- position46(Start).
array35([Arg0,Arg1,Arg2]) :- value24(Arg0),value10(Arg1),value25(Arg2).
array36([Arg0]) :- value12(Arg0).
position47(['uast:Position', 2, 17, 222]).
positions66(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier23(['uast:Identifier', 'a', Pos, [Role0]]) :- positions66(Pos),role0(Role0).
position48(['uast:Position', 1, 16, 220]).
positions67(['uast:Positions', Start, End]) :- position48(Start), position48(End).
array37([Arg0]) :- value28(Arg0).
array38([]).
object35(Obj) :- positions67(Obj), !.
object35(Obj) :- array37(Obj), !.
object35(Obj) :- value35(Obj), !.
object35(Obj) :- array38(Obj), !.
object36(Obj) :- array36(Obj), !.
object36(Obj) :- value15(Obj), !.
object36(Obj) :- value14(Obj), !.
object36(Obj) :- identifier23(Obj), !.
object36(Obj) :- object35(Obj), !.
array39([Arg0]) :- object36(Arg0).
value42('Function').
array40([Arg0,Arg1,Arg2,Arg3]) :- value42(Arg0),value39(Arg1),value10(Arg2),value21(Arg3).
value43('python:Call').
array41([]).
array42([]).
position49(['uast:Position', 5, 17, 225]).
position50(['uast:Position', 11, 17, 231]).
positions68(['uast:Positions', Start, End]) :- position49(Start), position50(End).
identifier24(['uast:Identifier', 'Animal', Pos, [Role0]]) :- positions68(Pos),role0(Role0).
value44('Callee').
array43([Arg0,Arg1]) :- value39(Arg0),value44(Arg1).
object37(Obj) :- value15(Obj), !.
object37(Obj) :- value16(Obj), !.
object37(Obj) :- identifier24(Obj), !.
object37(Obj) :- array43(Obj), !.
positions69(['uast:Positions', Start, _]) :- position49(Start).
object38(Obj) :- array40(Obj), !.
object38(Obj) :- value43(Obj), !.
object38(Obj) :- array41(Obj), !.
object38(Obj) :- array42(Obj), !.
object38(Obj) :- object37(Obj), !.
object38(Obj) :- positions69(Obj), !.
object39(Obj) :- array39(Obj), !.
object39(Obj) :- object38(Obj), !.
object39(Obj) :- positions65(Obj), !.
object39(Obj) :- array35(Obj), !.
object39(Obj) :- value26(Obj), !.
position51(['uast:Position', 1, 18, 234]).
positions70(['uast:Positions', Start, _]) :- position51(Start).
array44([Arg0,Arg1,Arg2]) :- value24(Arg0),value10(Arg1),value25(Arg2).
array45([Arg0,Arg1,Arg2,Arg3]) :- value9(Arg0),value10(Arg1),value11(Arg2),value12(Arg3).
position52(['uast:Position', 2, 18, 235]).
positions71(['uast:Positions', Start, End]) :- position51(Start), position52(End).
identifier25(['uast:Identifier', 'a', Pos, [Role0]]) :- positions71(Pos),role0(Role0).
object40(Obj) :- value16(Obj), !.
object40(Obj) :- identifier25(Obj), !.
object40(Obj) :- value15(Obj), !.
positions72(['uast:Positions', Start, _]) :- position51(Start).
identifier26(['uast:Identifier', 'b', Pos, [Role0]]) :- positions72(Pos),role0(Role0).
object41(Obj) :- value17(Obj), !.
object41(Obj) :- identifier26(Obj), !.
array46([Arg0,Arg1]) :- object40(Arg0),object41(Arg1).
position53(['uast:Position', 3, 18, 236]).
positions73(['uast:Positions', Start, End]) :- position52(Start), position53(End).
object42(Obj) :- array46(Obj), !.
object42(Obj) :- positions73(Obj), !.
object42(Obj) :- array45(Obj), !.
object42(Obj) :- value13(Obj), !.
object42(Obj) :- value14(Obj), !.
array47([Arg0]) :- object42(Arg0).
position54(['uast:Position', 7, 18, 240]).
position55(['uast:Position', 8, 18, 241]).
positions74(['uast:Positions', Start, End]) :- position54(Start), position55(End).
array48([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value10(Arg0),value18(Arg1),value19(Arg2),value20(Arg3),value21(Arg4).
value45(3).
object43(Obj) :- value22(Obj), !.
object43(Obj) :- value45(Obj), !.
object43(Obj) :- positions74(Obj), !.
object43(Obj) :- array48(Obj), !.
object44(Obj) :- array44(Obj), !.
object44(Obj) :- value26(Obj), !.
object44(Obj) :- array47(Obj), !.
object44(Obj) :- object43(Obj), !.
object44(Obj) :- positions70(Obj), !.
array49([Arg0,Arg1,Arg2]) :- value24(Arg0),value10(Arg1),value25(Arg2).
position56(['uast:Position', 2, 19, 243]).
position57(['uast:Position', 3, 19, 244]).
positions75(['uast:Positions', Start, End]) :- position56(Start), position57(End).
array50([Arg0,Arg1,Arg2,Arg3]) :- value9(Arg0),value10(Arg1),value11(Arg2),value12(Arg3).
position58(['uast:Position', 1, 19, 242]).
positions76(['uast:Positions', Start, End]) :- position58(Start), position56(End).
identifier27(['uast:Identifier', 'a', Pos, [Role0]]) :- positions76(Pos),role0(Role0).
object45(Obj) :- value15(Obj), !.
object45(Obj) :- value16(Obj), !.
object45(Obj) :- identifier27(Obj), !.
position59(['uast:Position', 4, 19, 245]).
positions77(['uast:Positions', Start, End]) :- position57(Start), position59(End).
identifier28(['uast:Identifier', 'b', Pos, [Role0]]) :- positions77(Pos),role0(Role0).
object46(Obj) :- value17(Obj), !.
object46(Obj) :- identifier28(Obj), !.
position60(['uast:Position', 5, 19, 246]).
position61(['uast:Position', 6, 19, 247]).
positions78(['uast:Positions', Start, End]) :- position60(Start), position61(End).
identifier29(['uast:Identifier', 'c', Pos, [Role0]]) :- positions78(Pos),role0(Role0).
object47(Obj) :- value17(Obj), !.
object47(Obj) :- identifier29(Obj), !.
position62(['uast:Position', 7, 19, 248]).
position63(['uast:Position', 8, 19, 249]).
positions79(['uast:Positions', Start, End]) :- position62(Start), position63(End).
identifier30(['uast:Identifier', 'd', Pos, [Role0]]) :- positions79(Pos),role0(Role0).
object48(Obj) :- value17(Obj), !.
object48(Obj) :- identifier30(Obj), !.
position64(['uast:Position', 9, 19, 250]).
position65(['uast:Position', 10, 19, 251]).
positions80(['uast:Positions', Start, End]) :- position64(Start), position65(End).
identifier31(['uast:Identifier', 'e', Pos, [Role0]]) :- positions80(Pos),role0(Role0).
object49(Obj) :- identifier31(Obj), !.
object49(Obj) :- value17(Obj), !.
position66(['uast:Position', 11, 19, 252]).
position67(['uast:Position', 12, 19, 253]).
positions81(['uast:Positions', Start, End]) :- position66(Start), position67(End).
identifier32(['uast:Identifier', 'f', Pos, [Role0]]) :- positions81(Pos),role0(Role0).
object50(Obj) :- value17(Obj), !.
object50(Obj) :- identifier32(Obj), !.
positions82(['uast:Positions', Start, _]) :- position58(Start).
identifier33(['uast:Identifier', 'g', Pos, [Role0]]) :- positions82(Pos),role0(Role0).
object51(Obj) :- value17(Obj), !.
object51(Obj) :- identifier33(Obj), !.
array51([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- object45(Arg0),object46(Arg1),object47(Arg2),object48(Arg3),object49(Arg4),object50(Arg5),object51(Arg6).
object52(Obj) :- positions75(Obj), !.
object52(Obj) :- array50(Obj), !.
object52(Obj) :- value13(Obj), !.
object52(Obj) :- value14(Obj), !.
object52(Obj) :- array51(Obj), !.
array52([Arg0]) :- object52(Arg0).
position68(['uast:Position', 17, 19, 258]).
position69(['uast:Position', 18, 19, 259]).
positions83(['uast:Positions', Start, End]) :- position68(Start), position69(End).
array53([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value10(Arg0),value18(Arg1),value19(Arg2),value20(Arg3),value21(Arg4).
value46(6).
object53(Obj) :- positions83(Obj), !.
object53(Obj) :- array53(Obj), !.
object53(Obj) :- value22(Obj), !.
object53(Obj) :- value46(Obj), !.
positions84(['uast:Positions', Start, _]) :- position58(Start).
object54(Obj) :- array49(Obj), !.
object54(Obj) :- value26(Obj), !.
object54(Obj) :- array52(Obj), !.
object54(Obj) :- object53(Obj), !.
object54(Obj) :- positions84(Obj), !.
position70(['uast:Position', 1, 20, 260]).
positions85(['uast:Positions', Start, _]) :- position70(Start).
array54([Arg0]) :- value10(Arg0).
value47('python:Expr').
array55([Arg0,Arg1,Arg2]) :- value42(Arg0),value39(Arg1),value10(Arg2).
array56([]).
position71(['uast:Position', 10, 20, 269]).
position72(['uast:Position', 11, 20, 270]).
positions86(['uast:Positions', Start, End]) :- position71(Start), position72(End).
value48('Positional').
value49('Argument').
value50('Name').
array57([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8]) :- value10(Arg0),value18(Arg1),value19(Arg2),value20(Arg3),value42(Arg4),value39(Arg5),value48(Arg6),value49(Arg7),value50(Arg8).
value51(5).
object55(Obj) :- positions86(Obj), !.
object55(Obj) :- array57(Obj), !.
object55(Obj) :- value22(Obj), !.
object55(Obj) :- value51(Obj), !.
array58([Arg0]) :- object55(Arg0).
position73(['uast:Position', 2, 20, 261]).
positions87(['uast:Positions', Start, End]) :- position70(Start), position73(End).
identifier34(['uast:Identifier', 'a', Pos, [Role0]]) :- positions87(Pos),role0(Role0).
object56(Obj) :- identifier34(Obj), !.
object56(Obj) :- value15(Obj), !.
object56(Obj) :- value16(Obj), !.
positions88(['uast:Positions', Start, _]) :- position70(Start).
identifier35(['uast:Identifier', 'method', Pos, [Role0]]) :- positions88(Pos),role0(Role0).
object57(Obj) :- value17(Obj), !.
object57(Obj) :- identifier35(Obj), !.
array59([Arg0,Arg1]) :- object56(Arg0),object57(Arg1).
position74(['uast:Position', 3, 20, 262]).
positions89(['uast:Positions', Start, End]) :- position73(Start), position74(End).
array60([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value9(Arg0),value10(Arg1),value11(Arg2),value39(Arg3),value44(Arg4).
object58(Obj) :- positions89(Obj), !.
object58(Obj) :- array60(Obj), !.
object58(Obj) :- value13(Obj), !.
object58(Obj) :- value16(Obj), !.
object58(Obj) :- array59(Obj), !.
positions90(['uast:Positions', Start, _]) :- position70(Start).
object59(Obj) :- array58(Obj), !.
object59(Obj) :- object58(Obj), !.
object59(Obj) :- positions90(Obj), !.
object59(Obj) :- array55(Obj), !.
object59(Obj) :- value43(Obj), !.
object59(Obj) :- array56(Obj), !.
object60(Obj) :- value47(Obj), !.
object60(Obj) :- object59(Obj), !.
object60(Obj) :- positions85(Obj), !.
object60(Obj) :- array54(Obj), !.
array61([Arg0,Arg1,Arg2,Arg3,Arg4]) :- object34(Arg0),object39(Arg1),object44(Arg2),object54(Arg3),object60(Arg4).
position75(['uast:Position', 1, 21, 272]).
positions91(['uast:Positions', Start, End]) :- position75(Start), position75(End).
array62([Arg0]) :- value28(Arg0).
value52('python:RemainderNoops').
array63([]).
object61(Obj) :- positions91(Obj), !.
object61(Obj) :- array62(Obj), !.
object61(Obj) :- value52(Obj), !.
object61(Obj) :- array63(Obj), !.
object62(Obj) :- positions0(Obj), !.
object62(Obj) :- array0(Obj), !.
object62(Obj) :- value2(Obj), !.
object62(Obj) :- array61(Obj), !.
object62(Obj) :- object61(Obj), !.

% value(Val).
value(X) :- value0(X);value1(X);value2(X);value3(X);value4(X);value5(X);value6(X);value7(X);value8(X);value9(X);value10(X);value11(X);value12(X);value13(X);value14(X);value15(X);value16(X);value17(X);value18(X);value19(X);value20(X);value21(X);value22(X);value23(X);value24(X);value25(X);value26(X);value27(X);value28(X);value29(X);value30(X);value31(X);value32(X);value33(X);value34(X);value35(X);value36(X);value37(X);value38(X);value39(X);value40(X);value41(X);value42(X);value43(X);value44(X);value45(X);value46(X);value47(X);value48(X);value49(X);value50(X);value51(X);value52(X).

% array([Arguments]).
array(X) :- array0(X);array1(X);array2(X);array3(X);array4(X);array5(X);array6(X);array7(X);array8(X);array9(X);array10(X);array11(X);array12(X);array13(X);array14(X);array15(X);array16(X);array17(X);array18(X);array19(X);array20(X);array21(X);array22(X);array23(X);array24(X);array25(X);array26(X);array27(X);array28(X);array29(X);array30(X);array31(X);array32(X);array33(X);array34(X);array35(X);array36(X);array37(X);array38(X);array39(X);array40(X);array41(X);array42(X);array43(X);array44(X);array45(X);array46(X);array47(X);array48(X);array49(X);array50(X);array51(X);array52(X);array53(X);array54(X);array55(X);array56(X);array57(X);array58(X);array59(X);array60(X);array61(X);array62(X);array63(X).

% object(Obj).
object(X) :- object0(X);object1(X);object2(X);object3(X);object4(X);object5(X);object6(X);object7(X);object8(X);object9(X);object10(X);object11(X);object12(X);object13(X);object14(X);object15(X);object16(X);object17(X);object18(X);object19(X);object20(X);object21(X);object22(X);object23(X);object24(X);object25(X);object26(X);object27(X);object28(X);object29(X);object30(X);object31(X);object32(X);object33(X);object34(X);object35(X);object36(X);object37(X);object38(X);object39(X);object40(X);object41(X);object42(X);object43(X);object44(X);object45(X);object46(X);object47(X);object48(X);object49(X);object50(X);object51(X);object52(X);object53(X);object54(X);object55(X);object56(X);object57(X);object58(X);object59(X);object60(X);object61(X);object62(X).

% role(Name).
role(X) :- role0(X).

% position([Type, Col, Line, Offset]).
position(X) :- position0(X);position1(X);position2(X);position3(X);position4(X);position5(X);position6(X);position7(X);position8(X);position9(X);position10(X);position11(X);position12(X);position13(X);position14(X);position15(X);position16(X);position17(X);position18(X);position19(X);position20(X);position21(X);position22(X);position23(X);position24(X);position25(X);position26(X);position27(X);position28(X);position29(X);position30(X);position31(X);position32(X);position33(X);position34(X);position35(X);position36(X);position37(X);position38(X);position39(X);position40(X);position41(X);position42(X);position43(X);position44(X);position45(X);position46(X);position47(X);position48(X);position49(X);position50(X);position51(X);position52(X);position53(X);position54(X);position55(X);position56(X);position57(X);position58(X);position59(X);position60(X);position61(X);position62(X);position63(X);position64(X);position65(X);position66(X);position67(X);position68(X);position69(X);position70(X);position71(X);position72(X);position73(X);position74(X);position75(X).

% positions([Type, Start, End]).
positions(X) :- positions0(X);positions1(X);positions2(X);positions3(X);positions4(X);positions5(X);positions6(X);positions7(X);positions8(X);positions9(X);positions10(X);positions11(X);positions12(X);positions13(X);positions14(X);positions15(X);positions16(X);positions17(X);positions18(X);positions19(X);positions20(X);positions21(X);positions22(X);positions23(X);positions24(X);positions25(X);positions26(X);positions27(X);positions28(X);positions29(X);positions30(X);positions31(X);positions32(X);positions33(X);positions34(X);positions35(X);positions36(X);positions37(X);positions38(X);positions39(X);positions40(X);positions41(X);positions42(X);positions43(X);positions44(X);positions45(X);positions46(X);positions47(X);positions48(X);positions49(X);positions50(X);positions51(X);positions52(X);positions53(X);positions54(X);positions55(X);positions56(X);positions57(X);positions58(X);positions59(X);positions60(X);positions61(X);positions62(X);positions63(X);positions64(X);positions65(X);positions66(X);positions67(X);positions68(X);positions69(X);positions70(X);positions71(X);positions72(X);positions73(X);positions74(X);positions75(X);positions76(X);positions77(X);positions78(X);positions79(X);positions80(X);positions81(X);positions82(X);positions83(X);positions84(X);positions85(X);positions86(X);positions87(X);positions88(X);positions89(X);positions90(X);positions91(X).

% identifier([Type, Name, Pos, [Roles]]).
identifier(X) :- identifier0(X);identifier1(X);identifier2(X);identifier3(X);identifier4(X);identifier5(X);identifier6(X);identifier7(X);identifier8(X);identifier9(X);identifier10(X);identifier11(X);identifier12(X);identifier13(X);identifier14(X);identifier15(X);identifier16(X);identifier17(X);identifier18(X);identifier19(X);identifier20(X);identifier21(X);identifier22(X);identifier23(X);identifier24(X);identifier25(X);identifier26(X);identifier27(X);identifier28(X);identifier29(X);identifier30(X);identifier31(X);identifier32(X);identifier33(X);identifier34(X);identifier35(X).

% qualified_identifier([Type, [Names], Pos]).
qualified_identifier(_) :- fail.

% comment([Type, Prefix, Suffix, Tab, Text, Block, Pos]).
comment(_) :- fail.

% group([Type, [Nodes], Pos]).
group(_) :- fail.

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X);function_group1(X);function_group2(X);function_group3(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X);block1(X);block2(X);block3(X).

% alias([Type, Name, Node, Pos]).
alias(X) :- alias0(X);alias1(X);alias2(X);alias3(X).

% import([Type, Path, Pos]).
import(_) :- fail.

% runtime_import([Type, Path, Pos]).
runtime_import(_) :- fail.

% runtime_reimport([Type, Path, Pos]).
runtime_reimport(_) :- fail.

% inline_import([Type, Path, Pos]).
inline_import(_) :- fail.

% argument([Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]).
argument(X) :- argument0(X);argument1(X);argument2(X);argument3(X);argument4(X);argument5(X);argument6(X);argument7(X).

% function_type([Type, [Arguments], [Returns], Pos]).
function_type(X) :- function_type0(X);function_type1(X);function_type2(X);function_type3(X).

% function([Type, FuncType, Body, Pos]).
function(X) :- function0(X);function1(X);function2(X);function3(X).
