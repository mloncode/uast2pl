positions0(['uast:Positions', _, _]).
value0('File').
value1('Module').
array0([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
value2('python:Module').
position0(['uast:Position', 5, 1, 4]).
position1(['uast:Position', 8, 1, 7]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position1(End).
array1([]).
value3(false).
object0(_).
object1(Obj) :- value3(Obj), !.
object1(Obj) :- object0(Obj), !.
object1(Obj) :- array1(Obj), !.
positions2(['uast:Positions', _, _]).
positions3(['uast:Positions', _, _]).
position2(['uast:Position', 9, 1, 8]).
position3(['uast:Position', 10, 1, 9]).
positions4(['uast:Positions', Start, End]) :- position2(Start), position3(End).
role0('Identifier').
identifier0(['uast:Identifier', 'n', Pos, [Role0]]) :- positions4(Pos),role0(Role0).
positions5(['uast:Positions', Start, End]) :- position2(Start), position3(End).
argument0(['uast:Argument', Name, _, _, false, false, false, Pos]) :- identifier0(Name),positions5(Pos).
position4(['uast:Position', 12, 1, 11]).
position5(['uast:Position', 13, 1, 12]).
positions6(['uast:Positions', Start, End]) :- position4(Start), position5(End).
identifier1(['uast:Identifier', 'a', Pos, [Role0]]) :- positions6(Pos),role0(Role0).
position6(['uast:Position', 16, 1, 15]).
position7(['uast:Position', 17, 1, 16]).
positions7(['uast:Positions', Start, End]) :- position6(Start), position7(End).
value4('Expression').
value5('Literal').
value6('Number').
value7('Primitive').
array2([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value5(Arg1),value6(Arg2),value7(Arg3).
value8('python:Num').
value9(0).
object2(Obj) :- positions7(Obj), !.
object2(Obj) :- array2(Obj), !.
object2(Obj) :- value8(Obj), !.
object2(Obj) :- value9(Obj), !.
positions8(['uast:Positions', Start, End]) :- position4(Start), position5(End).
argument1(['uast:Argument', Name, _, Init, false, false, false, Pos]) :- identifier1(Name),object2(Init),positions8(Pos).
position8(['uast:Position', 19, 1, 18]).
position9(['uast:Position', 20, 1, 19]).
positions9(['uast:Positions', Start, End]) :- position8(Start), position9(End).
identifier2(['uast:Identifier', 'b', Pos, [Role0]]) :- positions9(Pos),role0(Role0).
value10(1).
position10(['uast:Position', 23, 1, 22]).
position11(['uast:Position', 24, 1, 23]).
positions10(['uast:Positions', Start, End]) :- position10(Start), position11(End).
array3([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value5(Arg1),value6(Arg2),value7(Arg3).
object3(Obj) :- value8(Obj), !.
object3(Obj) :- value10(Obj), !.
object3(Obj) :- positions10(Obj), !.
object3(Obj) :- array3(Obj), !.
positions11(['uast:Positions', Start, End]) :- position8(Start), position9(End).
argument2(['uast:Argument', Name, _, Init, false, false, false, Pos]) :- identifier2(Name),object3(Init),positions11(Pos).
positions12(['uast:Positions', _, _]).
identifier3(['uast:Identifier', 'None', Pos, [Role0]]) :- positions12(Pos),role0(Role0).
positions13(['uast:Positions', _, _]).
argument3(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier3(Init),positions13(Pos).
function_type0(['uast:FunctionType', [Arg0,Arg1,Arg2], [Ret0], Pos]) :- argument0(Arg0),argument1(Arg1),argument2(Arg2),argument3(Ret0),positions3(Pos).
positions14(['uast:Positions', _, _]).
value11('If').
array4([Arg0,Arg1]) :- value11(Arg0),value4(Arg1).
value12('python:If').
value13('python:If.body').
position12(['uast:Position', 9, 3, 49]).
position13(['uast:Position', 15, 3, 55]).
positions15(['uast:Positions', Start, End]) :- position12(Start), position13(End).
value14('Return').
value15('Statement').
array5([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
value16('python:Return').
value17('return').
position14(['uast:Position', 16, 3, 56]).
position15(['uast:Position', 17, 3, 57]).
positions16(['uast:Positions', Start, End]) :- position14(Start), position15(End).
identifier4(['uast:Identifier', 'a', Pos, [Role0]]) :- positions16(Pos),role0(Role0).
value18('Load').
value19('python:BoxedName').
object4(Obj) :- identifier4(Obj), !.
object4(Obj) :- value18(Obj), !.
object4(Obj) :- value19(Obj), !.
object5(Obj) :- positions15(Obj), !.
object5(Obj) :- array5(Obj), !.
object5(Obj) :- value16(Obj), !.
object5(Obj) :- value17(Obj), !.
object5(Obj) :- object4(Obj), !.
array6([Arg0]) :- object5(Arg0).
value20('Body').
value21('Then').
array7([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value21(Arg2).
object6(Obj) :- array6(Obj), !.
object6(Obj) :- array7(Obj), !.
object6(Obj) :- value13(Obj), !.
value22('if').
value23('Else').
array8([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value23(Arg2).
value24('python:If.orelse').
value25('else').
array9([]).
object7(Obj) :- array9(Obj), !.
object7(Obj) :- array8(Obj), !.
object7(Obj) :- value24(Obj), !.
object7(Obj) :- value25(Obj), !.
position16(['uast:Position', 8, 2, 33]).
positions17(['uast:Positions', Start, _]) :- position16(Start).
value26('Binary').
value27('Condition').
array10([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value26(Arg1),value27(Arg2),value11(Arg3).
value28('python:Compare').
value29('Right').
array11([Arg0,Arg1]) :- value4(Arg0),value29(Arg1).
value30('python:Compare.comparators').
position17(['uast:Position', 13, 2, 38]).
position18(['uast:Position', 14, 2, 39]).
positions18(['uast:Positions', Start, End]) :- position17(Start), position18(End).
array12([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value5(Arg1),value6(Arg2),value7(Arg3).
object8(Obj) :- value9(Obj), !.
object8(Obj) :- positions18(Obj), !.
object8(Obj) :- array12(Obj), !.
object8(Obj) :- value8(Obj), !.
array13([Arg0]) :- object8(Arg0).
object9(Obj) :- array11(Obj), !.
object9(Obj) :- value30(Obj), !.
object9(Obj) :- array13(Obj), !.
value31('Left').
array14([Arg0,Arg1]) :- value4(Arg0),value31(Arg1).
position19(['uast:Position', 9, 2, 34]).
positions19(['uast:Positions', Start, End]) :- position16(Start), position19(End).
identifier5(['uast:Identifier', 'n', Pos, [Role0]]) :- positions19(Pos),role0(Role0).
object10(Obj) :- array14(Obj), !.
object10(Obj) :- value19(Obj), !.
object10(Obj) :- identifier5(Obj), !.
object10(Obj) :- value18(Obj), !.
array15([Arg0]) :- value4(Arg0).
value32('python:Compare.ops').
positions20(['uast:Positions', _, _]).
value33('Operator').
value34('Relational').
value35('Equal').
array16([Arg0,Arg1,Arg2]) :- value33(Arg0),value34(Arg1),value35(Arg2).
value36('python:Eq').
value37('==').
object11(Obj) :- array16(Obj), !.
object11(Obj) :- value36(Obj), !.
object11(Obj) :- value37(Obj), !.
object11(Obj) :- positions20(Obj), !.
array17([Arg0]) :- object11(Arg0).
object12(Obj) :- array15(Obj), !.
object12(Obj) :- value32(Obj), !.
object12(Obj) :- array17(Obj), !.
object13(Obj) :- object10(Obj), !.
object13(Obj) :- object12(Obj), !.
object13(Obj) :- positions17(Obj), !.
object13(Obj) :- array10(Obj), !.
object13(Obj) :- value28(Obj), !.
object13(Obj) :- object9(Obj), !.
position20(['uast:Position', 5, 2, 30]).
position21(['uast:Position', 7, 2, 32]).
positions21(['uast:Positions', Start, End]) :- position20(Start), position21(End).
object14(Obj) :- positions21(Obj), !.
object14(Obj) :- array4(Obj), !.
object14(Obj) :- value12(Obj), !.
object14(Obj) :- object6(Obj), !.
object14(Obj) :- value22(Obj), !.
object14(Obj) :- object7(Obj), !.
object14(Obj) :- object13(Obj), !.
position22(['uast:Position', 5, 4, 62]).
position23(['uast:Position', 7, 4, 64]).
positions22(['uast:Positions', Start, End]) :- position22(Start), position23(End).
array18([Arg0,Arg1]) :- value11(Arg0),value4(Arg1).
array19([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value21(Arg2).
position24(['uast:Position', 9, 5, 81]).
position25(['uast:Position', 15, 5, 87]).
positions23(['uast:Positions', Start, End]) :- position24(Start), position25(End).
array20([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
position26(['uast:Position', 16, 5, 88]).
position27(['uast:Position', 17, 5, 89]).
positions24(['uast:Positions', Start, End]) :- position26(Start), position27(End).
identifier6(['uast:Identifier', 'b', Pos, [Role0]]) :- positions24(Pos),role0(Role0).
object15(Obj) :- identifier6(Obj), !.
object15(Obj) :- value18(Obj), !.
object15(Obj) :- value19(Obj), !.
object16(Obj) :- positions23(Obj), !.
object16(Obj) :- array20(Obj), !.
object16(Obj) :- value16(Obj), !.
object16(Obj) :- value17(Obj), !.
object16(Obj) :- object15(Obj), !.
array21([Arg0]) :- object16(Arg0).
object17(Obj) :- array19(Obj), !.
object17(Obj) :- value13(Obj), !.
object17(Obj) :- array21(Obj), !.
array22([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value23(Arg2).
array23([]).
object18(Obj) :- array22(Obj), !.
object18(Obj) :- value24(Obj), !.
object18(Obj) :- value25(Obj), !.
object18(Obj) :- array23(Obj), !.
position28(['uast:Position', 13, 4, 70]).
position29(['uast:Position', 14, 4, 71]).
positions25(['uast:Positions', Start, End]) :- position28(Start), position29(End).
array24([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value5(Arg1),value6(Arg2),value7(Arg3).
object19(Obj) :- value10(Obj), !.
object19(Obj) :- positions25(Obj), !.
object19(Obj) :- array24(Obj), !.
object19(Obj) :- value8(Obj), !.
array25([Arg0]) :- object19(Arg0).
array26([Arg0,Arg1]) :- value4(Arg0),value29(Arg1).
object20(Obj) :- array25(Obj), !.
object20(Obj) :- array26(Obj), !.
object20(Obj) :- value30(Obj), !.
position30(['uast:Position', 8, 4, 65]).
position31(['uast:Position', 9, 4, 66]).
positions26(['uast:Positions', Start, End]) :- position30(Start), position31(End).
identifier7(['uast:Identifier', 'n', Pos, [Role0]]) :- positions26(Pos),role0(Role0).
array27([Arg0,Arg1]) :- value4(Arg0),value31(Arg1).
object21(Obj) :- array27(Obj), !.
object21(Obj) :- value19(Obj), !.
object21(Obj) :- identifier7(Obj), !.
object21(Obj) :- value18(Obj), !.
positions27(['uast:Positions', _, _]).
array28([Arg0,Arg1,Arg2]) :- value33(Arg0),value34(Arg1),value35(Arg2).
object22(Obj) :- value36(Obj), !.
object22(Obj) :- value37(Obj), !.
object22(Obj) :- positions27(Obj), !.
object22(Obj) :- array28(Obj), !.
array29([Arg0]) :- object22(Arg0).
array30([Arg0]) :- value4(Arg0).
object23(Obj) :- value32(Obj), !.
object23(Obj) :- array29(Obj), !.
object23(Obj) :- array30(Obj), !.
positions28(['uast:Positions', Start, _]) :- position30(Start).
array31([Arg0,Arg1,Arg2,Arg3]) :- value4(Arg0),value26(Arg1),value27(Arg2),value11(Arg3).
object24(Obj) :- object23(Obj), !.
object24(Obj) :- positions28(Obj), !.
object24(Obj) :- array31(Obj), !.
object24(Obj) :- value28(Obj), !.
object24(Obj) :- object20(Obj), !.
object24(Obj) :- object21(Obj), !.
object25(Obj) :- object24(Obj), !.
object25(Obj) :- positions22(Obj), !.
object25(Obj) :- array18(Obj), !.
object25(Obj) :- value12(Obj), !.
object25(Obj) :- object17(Obj), !.
object25(Obj) :- value22(Obj), !.
object25(Obj) :- object18(Obj), !.
value38('Function').
value39('Call').
array32([Arg0,Arg1,Arg2]) :- value38(Arg0),value39(Arg1),value4(Arg2).
value40('python:Call').
position32(['uast:Position', 16, 6, 105]).
positions29(['uast:Positions', Start, _]) :- position32(Start).
value41('Positional').
value42('Argument').
value43('Name').
array33([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value4(Arg0),value26(Arg1),value38(Arg2),value39(Arg3),value41(Arg4),value42(Arg5),value43(Arg6).
value44('python:BinOp').
position33(['uast:Position', 17, 6, 106]).
positions30(['uast:Positions', Start, End]) :- position32(Start), position33(End).
identifier8(['uast:Identifier', 'n', Pos, [Role0]]) :- positions30(Pos),role0(Role0).
array34([Arg0,Arg1,Arg2]) :- value4(Arg0),value26(Arg1),value31(Arg2).
object26(Obj) :- value19(Obj), !.
object26(Obj) :- identifier8(Obj), !.
object26(Obj) :- value18(Obj), !.
object26(Obj) :- array34(Obj), !.
value45('-').
positions31(['uast:Positions', _, _]).
value46('Arithmetic').
value47('Substract').
array35([Arg0,Arg1,Arg2,Arg3]) :- value33(Arg0),value46(Arg1),value47(Arg2),value26(Arg3).
value48('python:Sub').
object27(Obj) :- array35(Obj), !.
object27(Obj) :- value48(Obj), !.
object27(Obj) :- value45(Obj), !.
object27(Obj) :- positions31(Obj), !.
position34(['uast:Position', 20, 6, 109]).
position35(['uast:Position', 21, 6, 110]).
positions32(['uast:Positions', Start, End]) :- position34(Start), position35(End).
array36([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value4(Arg0),value5(Arg1),value6(Arg2),value7(Arg3),value26(Arg4),value29(Arg5).
object28(Obj) :- positions32(Obj), !.
object28(Obj) :- array36(Obj), !.
object28(Obj) :- value8(Obj), !.
object28(Obj) :- value10(Obj), !.
object29(Obj) :- positions29(Obj), !.
object29(Obj) :- array33(Obj), !.
object29(Obj) :- value44(Obj), !.
object29(Obj) :- object26(Obj), !.
object29(Obj) :- object27(Obj), !.
object29(Obj) :- object28(Obj), !.
array37([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value38(Arg0),value39(Arg1),value41(Arg2),value42(Arg3),value43(Arg4).
position36(['uast:Position', 23, 6, 112]).
position37(['uast:Position', 24, 6, 113]).
positions33(['uast:Positions', Start, End]) :- position36(Start), position37(End).
identifier9(['uast:Identifier', 'b', Pos, [Role0]]) :- positions33(Pos),role0(Role0).
object30(Obj) :- value19(Obj), !.
object30(Obj) :- identifier9(Obj), !.
object30(Obj) :- value18(Obj), !.
object30(Obj) :- array37(Obj), !.
position38(['uast:Position', 26, 6, 115]).
positions34(['uast:Positions', Start, _]) :- position38(Start).
array38([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value4(Arg0),value26(Arg1),value38(Arg2),value39(Arg3),value41(Arg4),value42(Arg5),value43(Arg6).
position39(['uast:Position', 27, 6, 116]).
positions35(['uast:Positions', Start, End]) :- position38(Start), position39(End).
identifier10(['uast:Identifier', 'a', Pos, [Role0]]) :- positions35(Pos),role0(Role0).
array39([Arg0,Arg1,Arg2]) :- value4(Arg0),value26(Arg1),value31(Arg2).
object31(Obj) :- value19(Obj), !.
object31(Obj) :- identifier10(Obj), !.
object31(Obj) :- value18(Obj), !.
object31(Obj) :- array39(Obj), !.
value49('+').
positions36(['uast:Positions', _, _]).
value50('Add').
array40([Arg0,Arg1,Arg2,Arg3]) :- value33(Arg0),value46(Arg1),value50(Arg2),value26(Arg3).
value51('python:Add').
object32(Obj) :- value51(Obj), !.
object32(Obj) :- value49(Obj), !.
object32(Obj) :- positions36(Obj), !.
object32(Obj) :- array40(Obj), !.
array41([Arg0,Arg1,Arg2]) :- value4(Arg0),value26(Arg1),value29(Arg2).
position40(['uast:Position', 30, 6, 119]).
position41(['uast:Position', 31, 6, 120]).
positions37(['uast:Positions', Start, End]) :- position40(Start), position41(End).
identifier11(['uast:Identifier', 'b', Pos, [Role0]]) :- positions37(Pos),role0(Role0).
object33(Obj) :- value19(Obj), !.
object33(Obj) :- identifier11(Obj), !.
object33(Obj) :- value18(Obj), !.
object33(Obj) :- array41(Obj), !.
object34(Obj) :- object33(Obj), !.
object34(Obj) :- positions34(Obj), !.
object34(Obj) :- array38(Obj), !.
object34(Obj) :- value44(Obj), !.
object34(Obj) :- object31(Obj), !.
object34(Obj) :- object32(Obj), !.
array42([Arg0,Arg1,Arg2]) :- object29(Arg0),object30(Arg1),object34(Arg2).
position42(['uast:Position', 12, 6, 101]).
position43(['uast:Position', 15, 6, 104]).
positions38(['uast:Positions', Start, End]) :- position42(Start), position43(End).
identifier12(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions38(Pos),role0(Role0).
value52('Callee').
array43([Arg0,Arg1]) :- value39(Arg0),value52(Arg1).
object35(Obj) :- value19(Obj), !.
object35(Obj) :- identifier12(Obj), !.
object35(Obj) :- value18(Obj), !.
object35(Obj) :- array43(Obj), !.
array44([]).
positions39(['uast:Positions', Start, _]) :- position42(Start).
object36(Obj) :- array32(Obj), !.
object36(Obj) :- value40(Obj), !.
object36(Obj) :- array42(Obj), !.
object36(Obj) :- object35(Obj), !.
object36(Obj) :- array44(Obj), !.
object36(Obj) :- positions39(Obj), !.
position44(['uast:Position', 5, 6, 94]).
position45(['uast:Position', 11, 6, 100]).
positions40(['uast:Positions', Start, End]) :- position44(Start), position45(End).
array45([Arg0,Arg1]) :- value14(Arg0),value15(Arg1).
object37(Obj) :- value16(Obj), !.
object37(Obj) :- value17(Obj), !.
object37(Obj) :- object36(Obj), !.
object37(Obj) :- positions40(Obj), !.
object37(Obj) :- array45(Obj), !.
block0(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions14(Pos),object14(Stmt0),object25(Stmt1),object37(Stmt2).
positions41(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions41(Pos).
positions42(['uast:Positions', _, _]).
identifier13(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier13(Name),function0(Node),positions2(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions1(Pos),object1(Node0),alias0(Node1).
array46([Arg0]) :- function_group0(Arg0).
object38(Obj) :- positions0(Obj), !.
object38(Obj) :- array0(Obj), !.
object38(Obj) :- value2(Obj), !.
object38(Obj) :- array46(Obj), !.

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
