positions0(['uast:Positions', _, _]).
position0(['uast:Position', 1, 1, 0]).
position1(['uast:Position', 33, 1, 32]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position1(End).
comment0(['uast:Comment', ' ', '', '', 'A Hello World! program in C#.', false, Pos]) :- positions1(Pos).
position2(['uast:Position', 1, 2, 33]).
position3(['uast:Position', 14, 2, 46]).
positions2(['uast:Positions', Start, End]) :- position2(Start), position3(End).
position4(['uast:Position', 7, 2, 39]).
position5(['uast:Position', 13, 2, 45]).
positions3(['uast:Positions', Start, End]) :- position4(Start), position5(End).
role0('Identifier').
identifier0(['uast:Identifier', 'System', Pos, [Role0]]) :- positions3(Pos),role0(Role0).
import0(['uast:Import', Path, Pos]) :- identifier0(Path),positions2(Pos).
group0(['uast:Group', [Node0,Node1], Pos]) :- positions0(Pos),comment0(Node0),import0(Node1).
array0([Arg0]) :- group0(Arg0).
position6(['uast:Position', 1, 17, 342]).
positions4(['uast:Positions', Start, End]) :- position2(Start), position6(End).
value0('File').
value1('Module').
array1([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
value2('Noop').
value3('Incomplete').
array2([Arg0,Arg1]) :- value2(Arg0),value3(Arg1).
value4('csharp:EndOfFileToken').
value5(false).
value6('').
positions5(['uast:Positions', Start, End]) :- position6(Start), position6(End).
object0(Obj) :- value6(Obj), !.
object0(Obj) :- positions5(Obj), !.
object0(Obj) :- array2(Obj), !.
object0(Obj) :- value4(Obj), !.
object0(Obj) :- value5(Obj), !.
position7(['uast:Position', 1, 3, 47]).
position8(['uast:Position', 10, 3, 56]).
positions6(['uast:Positions', Start, End]) :- position7(Start), position8(End).
value7('Block').
array3([Arg0]) :- value7(Arg0).
value8('csharp:NamespaceKeyword').
value9('namespace').
object1(Obj) :- positions6(Obj), !.
object1(Obj) :- array3(Obj), !.
object1(Obj) :- value8(Obj), !.
object1(Obj) :- value5(Obj), !.
object1(Obj) :- value9(Obj), !.
value10('Scope').
array4([Arg0,Arg1]) :- value7(Arg0),value10(Arg1).
position9(['uast:Position', 9, 7, 100]).
position10(['uast:Position', 10, 14, 333]).
positions7(['uast:Positions', Start, End]) :- position9(Start), position10(End).
value11('static').
position11(['uast:Position', 15, 7, 106]).
positions8(['uast:Positions', Start, End]) :- position9(Start), position11(End).
array5([Arg0]) :- value3(Arg0).
value12('csharp:StaticKeyword').
object2(Obj) :- value11(Obj), !.
object2(Obj) :- positions8(Obj), !.
object2(Obj) :- array5(Obj), !.
object2(Obj) :- value12(Obj), !.
object2(Obj) :- value5(Obj), !.
array6([Arg0]) :- object2(Arg0).
positions9(['uast:Positions', _, _]).
positions10(['uast:Positions', _, _]).
position12(['uast:Position', 16, 7, 107]).
position13(['uast:Position', 20, 7, 111]).
positions11(['uast:Positions', Start, End]) :- position12(Start), position13(End).
value13('Type').
value14('Primitive').
array7([Arg0,Arg1,Arg2]) :- value13(Arg0),value14(Arg1),value3(Arg2).
value15('csharp:PredefinedType').
value16('void').
positions12(['uast:Positions', Start, End]) :- position12(Start), position13(End).
array8([Arg0]) :- value3(Arg0).
value17('csharp:VoidKeyword').
object3(Obj) :- value16(Obj), !.
object3(Obj) :- positions12(Obj), !.
object3(Obj) :- array8(Obj), !.
object3(Obj) :- value17(Obj), !.
object3(Obj) :- value5(Obj), !.
object4(Obj) :- value15(Obj), !.
object4(Obj) :- object3(Obj), !.
object4(Obj) :- value5(Obj), !.
object4(Obj) :- positions11(Obj), !.
object4(Obj) :- array7(Obj), !.
positions13(['uast:Positions', _, _]).
argument0(['uast:Argument', _, Type, _, false, false, false, Pos]) :- object4(Type),positions13(Pos).
function_type0(['uast:FunctionType', [], [Ret0], Pos]) :- argument0(Ret0),positions10(Pos).
position14(['uast:Position', 9, 8, 127]).
positions14(['uast:Positions', Start, End]) :- position14(Start), position10(End).
value18('Expression').
value19('Statement').
array9([Arg0,Arg1]) :- value18(Arg0),value19(Arg1).
value20('csharp:ExpressionStatement').
value21(';').
position15(['uast:Position', 46, 9, 174]).
position16(['uast:Position', 47, 9, 175]).
positions15(['uast:Positions', Start, End]) :- position15(Start), position16(End).
array10([Arg0]) :- value3(Arg0).
value22('csharp:SemicolonToken').
object5(Obj) :- value5(Obj), !.
object5(Obj) :- value21(Obj), !.
object5(Obj) :- positions15(Obj), !.
object5(Obj) :- array10(Obj), !.
object5(Obj) :- value22(Obj), !.
value23('csharp:InvocationExpression').
position17(['uast:Position', 13, 9, 141]).
position18(['uast:Position', 30, 9, 158]).
positions16(['uast:Positions', Start, End]) :- position17(Start), position18(End).
value24('Qualified').
array11([Arg0]) :- value24(Arg0).
value25('csharp:SimpleMemberAccessExpression').
position19(['uast:Position', 21, 9, 149]).
positions17(['uast:Positions', Start, End]) :- position19(Start), position18(End).
identifier1(['uast:Identifier', 'WriteLine', Pos, [Role0]]) :- positions17(Pos),role0(Role0).
position20(['uast:Position', 20, 9, 148]).
positions18(['uast:Positions', Start, End]) :- position17(Start), position20(End).
identifier2(['uast:Identifier', 'Console', Pos, [Role0]]) :- positions18(Pos),role0(Role0).
value26('.').
positions19(['uast:Positions', Start, End]) :- position20(Start), position19(End).
array12([Arg0]) :- value3(Arg0).
value27('csharp:DotToken').
object6(Obj) :- value5(Obj), !.
object6(Obj) :- value26(Obj), !.
object6(Obj) :- positions19(Obj), !.
object6(Obj) :- array12(Obj), !.
object6(Obj) :- value27(Obj), !.
object7(Obj) :- value25(Obj), !.
object7(Obj) :- value5(Obj), !.
object7(Obj) :- identifier1(Obj), !.
object7(Obj) :- identifier2(Obj), !.
object7(Obj) :- object6(Obj), !.
object7(Obj) :- positions16(Obj), !.
object7(Obj) :- array11(Obj), !.
position21(['uast:Position', 31, 9, 159]).
position22(['uast:Position', 45, 9, 173]).
positions20(['uast:Positions', Start, End]) :- position21(Start), position22(End).
value28('Function').
value29('Call').
value30('Argument').
array13([Arg0,Arg1,Arg2]) :- value28(Arg0),value29(Arg1),value30(Arg2).
positions21(['uast:Positions', Start, End]) :- position21(Start), position22(End).
value31('uast:String').
value32('Hello World!').
object8(Obj) :- value6(Obj), !.
object8(Obj) :- positions21(Obj), !.
object8(Obj) :- value31(Obj), !.
object8(Obj) :- value32(Obj), !.
value33('csharp:Argument').
value34('csharp:None').
positions22(['uast:Positions', Start, End]) :- position0(Start), position0(End).
array14([Arg0]) :- value3(Arg0).
object9(Obj) :- value5(Obj), !.
object9(Obj) :- value6(Obj), !.
object9(Obj) :- positions22(Obj), !.
object9(Obj) :- array14(Obj), !.
object9(Obj) :- value34(Obj), !.
positions23(['uast:Positions', Start, End]) :- position0(Start), position0(End).
array15([Arg0]) :- value3(Arg0).
object10(Obj) :- value6(Obj), !.
object10(Obj) :- positions23(Obj), !.
object10(Obj) :- array15(Obj), !.
object10(Obj) :- value34(Obj), !.
object10(Obj) :- value5(Obj), !.
object11(Obj) :- value5(Obj), !.
object11(Obj) :- object8(Obj), !.
object11(Obj) :- value33(Obj), !.
object11(Obj) :- object9(Obj), !.
object11(Obj) :- object10(Obj), !.
object11(Obj) :- positions20(Obj), !.
object11(Obj) :- array13(Obj), !.
array16([Arg0]) :- object11(Arg0).
array17([Arg0]) :- value3(Arg0).
value35('csharp:CloseParenToken').
value36(')').
positions24(['uast:Positions', Start, End]) :- position22(Start), position15(End).
object12(Obj) :- value35(Obj), !.
object12(Obj) :- value5(Obj), !.
object12(Obj) :- value36(Obj), !.
object12(Obj) :- positions24(Obj), !.
object12(Obj) :- array17(Obj), !.
value37('(').
positions25(['uast:Positions', Start, End]) :- position18(Start), position21(End).
array18([Arg0]) :- value3(Arg0).
value38('csharp:OpenParenToken').
object13(Obj) :- array18(Obj), !.
object13(Obj) :- value38(Obj), !.
object13(Obj) :- value5(Obj), !.
object13(Obj) :- value37(Obj), !.
object13(Obj) :- positions25(Obj), !.
positions26(['uast:Positions', Start, End]) :- position18(Start), position15(End).
value39('List').
array19([Arg0,Arg1,Arg2,Arg3]) :- value28(Arg0),value29(Arg1),value30(Arg2),value39(Arg3).
value40('csharp:ArgumentList').
object14(Obj) :- object12(Obj), !.
object14(Obj) :- object13(Obj), !.
object14(Obj) :- positions26(Obj), !.
object14(Obj) :- array19(Obj), !.
object14(Obj) :- value40(Obj), !.
object14(Obj) :- value5(Obj), !.
object14(Obj) :- array16(Obj), !.
positions27(['uast:Positions', Start, End]) :- position17(Start), position15(End).
array20([Arg0,Arg1]) :- value28(Arg0),value29(Arg1).
object15(Obj) :- value23(Obj), !.
object15(Obj) :- value5(Obj), !.
object15(Obj) :- object7(Obj), !.
object15(Obj) :- object14(Obj), !.
object15(Obj) :- positions27(Obj), !.
object15(Obj) :- array20(Obj), !.
positions28(['uast:Positions', Start, End]) :- position17(Start), position16(End).
object16(Obj) :- positions28(Obj), !.
object16(Obj) :- array9(Obj), !.
object16(Obj) :- value20(Obj), !.
object16(Obj) :- value5(Obj), !.
object16(Obj) :- object5(Obj), !.
object16(Obj) :- object15(Obj), !.
array21([Arg0,Arg1]) :- value18(Arg0),value19(Arg1).
position23(['uast:Position', 56, 12, 291]).
position24(['uast:Position', 57, 12, 292]).
positions29(['uast:Positions', Start, End]) :- position23(Start), position24(End).
array22([Arg0]) :- value3(Arg0).
object17(Obj) :- positions29(Obj), !.
object17(Obj) :- array22(Obj), !.
object17(Obj) :- value22(Obj), !.
object17(Obj) :- value5(Obj), !.
object17(Obj) :- value21(Obj), !.
array23([Arg0]) :- value24(Arg0).
position25(['uast:Position', 21, 12, 256]).
position26(['uast:Position', 30, 12, 265]).
positions30(['uast:Positions', Start, End]) :- position25(Start), position26(End).
identifier3(['uast:Identifier', 'WriteLine', Pos, [Role0]]) :- positions30(Pos),role0(Role0).
positions31(['uast:Positions', _, _]).
position27(['uast:Position', 13, 11, 189]).
position28(['uast:Position', 59, 11, 235]).
positions32(['uast:Positions', Start, End]) :- position27(Start), position28(End).
comment1(['uast:Comment', ' ', '', '', 'Keep the console window open in debug mode.', false, Pos]) :- positions32(Pos).
position29(['uast:Position', 13, 12, 248]).
position30(['uast:Position', 20, 12, 255]).
positions33(['uast:Positions', Start, End]) :- position29(Start), position30(End).
identifier4(['uast:Identifier', 'Console', Pos, [Role0]]) :- positions33(Pos),role0(Role0).
group1(['uast:Group', [Node0,Node1], Pos]) :- positions31(Pos),comment1(Node0),identifier4(Node1).
positions34(['uast:Positions', Start, End]) :- position30(Start), position25(End).
array24([Arg0]) :- value3(Arg0).
object18(Obj) :- positions34(Obj), !.
object18(Obj) :- array24(Obj), !.
object18(Obj) :- value27(Obj), !.
object18(Obj) :- value5(Obj), !.
object18(Obj) :- value26(Obj), !.
positions35(['uast:Positions', Start, End]) :- position29(Start), position26(End).
object19(Obj) :- array23(Obj), !.
object19(Obj) :- value25(Obj), !.
object19(Obj) :- value5(Obj), !.
object19(Obj) :- identifier3(Obj), !.
object19(Obj) :- group1(Obj), !.
object19(Obj) :- object18(Obj), !.
object19(Obj) :- positions35(Obj), !.
position31(['uast:Position', 31, 12, 266]).
position32(['uast:Position', 55, 12, 290]).
positions36(['uast:Positions', Start, End]) :- position31(Start), position32(End).
value41('Press any key to exit.').
object20(Obj) :- positions36(Obj), !.
object20(Obj) :- value31(Obj), !.
object20(Obj) :- value41(Obj), !.
object20(Obj) :- value6(Obj), !.
positions37(['uast:Positions', Start, End]) :- position31(Start), position32(End).
array25([Arg0,Arg1,Arg2]) :- value28(Arg0),value29(Arg1),value30(Arg2).
positions38(['uast:Positions', Start, End]) :- position0(Start), position0(End).
array26([Arg0]) :- value3(Arg0).
object21(Obj) :- value6(Obj), !.
object21(Obj) :- positions38(Obj), !.
object21(Obj) :- array26(Obj), !.
object21(Obj) :- value34(Obj), !.
object21(Obj) :- value5(Obj), !.
positions39(['uast:Positions', Start, End]) :- position0(Start), position0(End).
array27([Arg0]) :- value3(Arg0).
object22(Obj) :- array27(Obj), !.
object22(Obj) :- value34(Obj), !.
object22(Obj) :- value5(Obj), !.
object22(Obj) :- value6(Obj), !.
object22(Obj) :- positions39(Obj), !.
object23(Obj) :- value33(Obj), !.
object23(Obj) :- value5(Obj), !.
object23(Obj) :- object20(Obj), !.
object23(Obj) :- positions37(Obj), !.
object23(Obj) :- array25(Obj), !.
object23(Obj) :- object21(Obj), !.
object23(Obj) :- object22(Obj), !.
array28([Arg0]) :- object23(Arg0).
positions40(['uast:Positions', Start, End]) :- position32(Start), position23(End).
array29([Arg0]) :- value3(Arg0).
object24(Obj) :- value35(Obj), !.
object24(Obj) :- value5(Obj), !.
object24(Obj) :- value36(Obj), !.
object24(Obj) :- positions40(Obj), !.
object24(Obj) :- array29(Obj), !.
positions41(['uast:Positions', Start, End]) :- position26(Start), position31(End).
array30([Arg0]) :- value3(Arg0).
object25(Obj) :- value37(Obj), !.
object25(Obj) :- positions41(Obj), !.
object25(Obj) :- array30(Obj), !.
object25(Obj) :- value38(Obj), !.
object25(Obj) :- value5(Obj), !.
positions42(['uast:Positions', Start, End]) :- position26(Start), position23(End).
array31([Arg0,Arg1,Arg2,Arg3]) :- value28(Arg0),value29(Arg1),value30(Arg2),value39(Arg3).
object26(Obj) :- value40(Obj), !.
object26(Obj) :- value5(Obj), !.
object26(Obj) :- array28(Obj), !.
object26(Obj) :- object24(Obj), !.
object26(Obj) :- object25(Obj), !.
object26(Obj) :- positions42(Obj), !.
object26(Obj) :- array31(Obj), !.
positions43(['uast:Positions', Start, End]) :- position29(Start), position23(End).
array32([Arg0,Arg1]) :- value28(Arg0),value29(Arg1).
object27(Obj) :- value23(Obj), !.
object27(Obj) :- value5(Obj), !.
object27(Obj) :- object19(Obj), !.
object27(Obj) :- object26(Obj), !.
object27(Obj) :- positions43(Obj), !.
object27(Obj) :- array32(Obj), !.
positions44(['uast:Positions', Start, End]) :- position29(Start), position24(End).
object28(Obj) :- array21(Obj), !.
object28(Obj) :- value20(Obj), !.
object28(Obj) :- value5(Obj), !.
object28(Obj) :- object17(Obj), !.
object28(Obj) :- object27(Obj), !.
object28(Obj) :- positions44(Obj), !.
array33([Arg0,Arg1]) :- value18(Arg0),value19(Arg1).
position33(['uast:Position', 30, 13, 322]).
position34(['uast:Position', 31, 13, 323]).
positions45(['uast:Positions', Start, End]) :- position33(Start), position34(End).
array34([Arg0]) :- value3(Arg0).
object29(Obj) :- value21(Obj), !.
object29(Obj) :- positions45(Obj), !.
object29(Obj) :- array34(Obj), !.
object29(Obj) :- value22(Obj), !.
object29(Obj) :- value5(Obj), !.
position35(['uast:Position', 13, 13, 305]).
positions46(['uast:Positions', Start, End]) :- position35(Start), position33(End).
array35([Arg0,Arg1]) :- value28(Arg0),value29(Arg1).
position36(['uast:Position', 21, 13, 313]).
position37(['uast:Position', 28, 13, 320]).
positions47(['uast:Positions', Start, End]) :- position36(Start), position37(End).
identifier5(['uast:Identifier', 'ReadKey', Pos, [Role0]]) :- positions47(Pos),role0(Role0).
position38(['uast:Position', 20, 13, 312]).
positions48(['uast:Positions', Start, End]) :- position35(Start), position38(End).
identifier6(['uast:Identifier', 'Console', Pos, [Role0]]) :- positions48(Pos),role0(Role0).
positions49(['uast:Positions', Start, End]) :- position38(Start), position36(End).
array36([Arg0]) :- value3(Arg0).
object30(Obj) :- positions49(Obj), !.
object30(Obj) :- array36(Obj), !.
object30(Obj) :- value27(Obj), !.
object30(Obj) :- value5(Obj), !.
object30(Obj) :- value26(Obj), !.
positions50(['uast:Positions', Start, End]) :- position35(Start), position37(End).
array37([Arg0]) :- value24(Arg0).
object31(Obj) :- identifier5(Obj), !.
object31(Obj) :- identifier6(Obj), !.
object31(Obj) :- object30(Obj), !.
object31(Obj) :- positions50(Obj), !.
object31(Obj) :- array37(Obj), !.
object31(Obj) :- value25(Obj), !.
object31(Obj) :- value5(Obj), !.
array38([]).
position39(['uast:Position', 29, 13, 321]).
positions51(['uast:Positions', Start, End]) :- position39(Start), position33(End).
array39([Arg0]) :- value3(Arg0).
object32(Obj) :- value36(Obj), !.
object32(Obj) :- positions51(Obj), !.
object32(Obj) :- array39(Obj), !.
object32(Obj) :- value35(Obj), !.
object32(Obj) :- value5(Obj), !.
positions52(['uast:Positions', Start, End]) :- position37(Start), position39(End).
array40([Arg0]) :- value3(Arg0).
object33(Obj) :- value38(Obj), !.
object33(Obj) :- value5(Obj), !.
object33(Obj) :- value37(Obj), !.
object33(Obj) :- positions52(Obj), !.
object33(Obj) :- array40(Obj), !.
positions53(['uast:Positions', Start, End]) :- position37(Start), position33(End).
array41([Arg0,Arg1,Arg2,Arg3]) :- value28(Arg0),value29(Arg1),value30(Arg2),value39(Arg3).
object34(Obj) :- object32(Obj), !.
object34(Obj) :- object33(Obj), !.
object34(Obj) :- positions53(Obj), !.
object34(Obj) :- array41(Obj), !.
object34(Obj) :- value40(Obj), !.
object34(Obj) :- value5(Obj), !.
object34(Obj) :- array38(Obj), !.
object35(Obj) :- value5(Obj), !.
object35(Obj) :- object31(Obj), !.
object35(Obj) :- object34(Obj), !.
object35(Obj) :- positions46(Obj), !.
object35(Obj) :- array35(Obj), !.
object35(Obj) :- value23(Obj), !.
positions54(['uast:Positions', Start, End]) :- position35(Start), position34(End).
object36(Obj) :- value5(Obj), !.
object36(Obj) :- object29(Obj), !.
object36(Obj) :- object35(Obj), !.
object36(Obj) :- positions54(Obj), !.
object36(Obj) :- array33(Obj), !.
object36(Obj) :- value20(Obj), !.
block0(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions14(Pos),object16(Stmt0),object28(Stmt1),object36(Stmt2).
positions55(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions55(Pos).
position40(['uast:Position', 21, 7, 112]).
position41(['uast:Position', 25, 7, 116]).
positions56(['uast:Positions', Start, End]) :- position40(Start), position41(End).
identifier7(['uast:Identifier', 'Main', Pos, [Role0]]) :- positions56(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier7(Name),function0(Node),positions9(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions7(Pos),array6(Node0),alias0(Node1).
array42([Arg0]) :- function_group0(Arg0).
value42('csharp:CloseBraceToken').
value43('}').
position42(['uast:Position', 5, 15, 338]).
position43(['uast:Position', 6, 15, 339]).
positions57(['uast:Positions', Start, End]) :- position42(Start), position43(End).
array43([Arg0]) :- value3(Arg0).
object37(Obj) :- value42(Obj), !.
object37(Obj) :- value5(Obj), !.
object37(Obj) :- value43(Obj), !.
object37(Obj) :- positions57(Obj), !.
object37(Obj) :- array43(Obj), !.
value44('{').
position44(['uast:Position', 5, 6, 90]).
position45(['uast:Position', 6, 6, 91]).
positions58(['uast:Positions', Start, End]) :- position44(Start), position45(End).
array44([Arg0]) :- value3(Arg0).
value45('csharp:OpenBraceToken').
object38(Obj) :- value45(Obj), !.
object38(Obj) :- value5(Obj), !.
object38(Obj) :- value44(Obj), !.
object38(Obj) :- positions58(Obj), !.
object38(Obj) :- array44(Obj), !.
array45([]).
array46([]).
value46('Declaration').
array47([Arg0,Arg1]) :- value13(Arg0),value46(Arg1).
value47('csharp:ClassDeclaration').
array48([]).
position46(['uast:Position', 11, 5, 80]).
position47(['uast:Position', 16, 5, 85]).
positions59(['uast:Positions', Start, End]) :- position46(Start), position47(End).
identifier8(['uast:Identifier', 'Hello', Pos, [Role0]]) :- positions59(Pos),role0(Role0).
position48(['uast:Position', 5, 5, 74]).
positions60(['uast:Positions', Start, End]) :- position48(Start), position43(End).
value48(0).
array49([Arg0,Arg1]) :- value13(Arg0),value46(Arg1).
value49('csharp:ClassKeyword').
value50('class').
position49(['uast:Position', 10, 5, 79]).
positions61(['uast:Positions', Start, End]) :- position48(Start), position49(End).
object39(Obj) :- array49(Obj), !.
object39(Obj) :- value49(Obj), !.
object39(Obj) :- value5(Obj), !.
object39(Obj) :- value50(Obj), !.
object39(Obj) :- positions61(Obj), !.
positions62(['uast:Positions', Start, End]) :- position0(Start), position0(End).
array50([Arg0]) :- value3(Arg0).
object40(Obj) :- value34(Obj), !.
object40(Obj) :- value5(Obj), !.
object40(Obj) :- value6(Obj), !.
object40(Obj) :- positions62(Obj), !.
object40(Obj) :- array50(Obj), !.
object41(Obj) :- array45(Obj), !.
object41(Obj) :- array47(Obj), !.
object41(Obj) :- value47(Obj), !.
object41(Obj) :- object39(Obj), !.
object41(Obj) :- value5(Obj), !.
object41(Obj) :- object37(Obj), !.
object41(Obj) :- object38(Obj), !.
object41(Obj) :- array46(Obj), !.
object41(Obj) :- value48(Obj), !.
object41(Obj) :- array42(Obj), !.
object41(Obj) :- array48(Obj), !.
object41(Obj) :- identifier8(Obj), !.
object41(Obj) :- positions60(Obj), !.
object41(Obj) :- object40(Obj), !.
array51([Arg0]) :- object41(Arg0).
array52([]).
array53([]).
position50(['uast:Position', 1, 16, 340]).
position51(['uast:Position', 2, 16, 341]).
positions63(['uast:Positions', Start, End]) :- position50(Start), position51(End).
array54([Arg0]) :- value3(Arg0).
object42(Obj) :- value43(Obj), !.
object42(Obj) :- positions63(Obj), !.
object42(Obj) :- array54(Obj), !.
object42(Obj) :- value42(Obj), !.
object42(Obj) :- value5(Obj), !.
position52(['uast:Position', 11, 3, 57]).
position53(['uast:Position', 21, 3, 67]).
positions64(['uast:Positions', Start, End]) :- position52(Start), position53(End).
identifier9(['uast:Identifier', 'HelloWorld', Pos, [Role0]]) :- positions64(Pos),role0(Role0).
positions65(['uast:Positions', Start, End]) :- position7(Start), position51(End).
value51('csharp:NamespaceDeclaration').
position54(['uast:Position', 1, 4, 68]).
position55(['uast:Position', 2, 4, 69]).
positions66(['uast:Positions', Start, End]) :- position54(Start), position55(End).
array55([Arg0]) :- value3(Arg0).
object43(Obj) :- positions66(Obj), !.
object43(Obj) :- array55(Obj), !.
object43(Obj) :- value45(Obj), !.
object43(Obj) :- value5(Obj), !.
object43(Obj) :- value44(Obj), !.
positions67(['uast:Positions', Start, End]) :- position0(Start), position0(End).
array56([Arg0]) :- value3(Arg0).
object44(Obj) :- positions67(Obj), !.
object44(Obj) :- array56(Obj), !.
object44(Obj) :- value34(Obj), !.
object44(Obj) :- value5(Obj), !.
object44(Obj) :- value6(Obj), !.
object45(Obj) :- object1(Obj), !.
object45(Obj) :- array51(Obj), !.
object45(Obj) :- array52(Obj), !.
object45(Obj) :- value5(Obj), !.
object45(Obj) :- object42(Obj), !.
object45(Obj) :- positions65(Obj), !.
object45(Obj) :- value51(Obj), !.
object45(Obj) :- array4(Obj), !.
object45(Obj) :- array53(Obj), !.
object45(Obj) :- identifier9(Obj), !.
object45(Obj) :- object43(Obj), !.
object45(Obj) :- object44(Obj), !.
array57([Arg0]) :- object45(Arg0).
value52('csharp:CompilationUnit').
array58([]).
array59([]).
object46(Obj) :- positions4(Obj), !.
object46(Obj) :- array1(Obj), !.
object46(Obj) :- value5(Obj), !.
object46(Obj) :- value52(Obj), !.
object46(Obj) :- array0(Obj), !.
object46(Obj) :- object0(Obj), !.
object46(Obj) :- array57(Obj), !.
object46(Obj) :- array58(Obj), !.
object46(Obj) :- array59(Obj), !.

% value(Val).
value(X) :- value0(X);value1(X);value2(X);value3(X);value4(X);value5(X);value6(X);value7(X);value8(X);value9(X);value10(X);value11(X);value12(X);value13(X);value14(X);value15(X);value16(X);value17(X);value18(X);value19(X);value20(X);value21(X);value22(X);value23(X);value24(X);value25(X);value26(X);value27(X);value28(X);value29(X);value30(X);value31(X);value32(X);value33(X);value34(X);value35(X);value36(X);value37(X);value38(X);value39(X);value40(X);value41(X);value42(X);value43(X);value44(X);value45(X);value46(X);value47(X);value48(X);value49(X);value50(X);value51(X);value52(X).

% array([Arguments]).
array(X) :- array0(X);array1(X);array2(X);array3(X);array4(X);array5(X);array6(X);array7(X);array8(X);array9(X);array10(X);array11(X);array12(X);array13(X);array14(X);array15(X);array16(X);array17(X);array18(X);array19(X);array20(X);array21(X);array22(X);array23(X);array24(X);array25(X);array26(X);array27(X);array28(X);array29(X);array30(X);array31(X);array32(X);array33(X);array34(X);array35(X);array36(X);array37(X);array38(X);array39(X);array40(X);array41(X);array42(X);array43(X);array44(X);array45(X);array46(X);array47(X);array48(X);array49(X);array50(X);array51(X);array52(X);array53(X);array54(X);array55(X);array56(X);array57(X);array58(X);array59(X).

% object(Obj).
object(X) :- object0(X);object1(X);object2(X);object3(X);object4(X);object5(X);object6(X);object7(X);object8(X);object9(X);object10(X);object11(X);object12(X);object13(X);object14(X);object15(X);object16(X);object17(X);object18(X);object19(X);object20(X);object21(X);object22(X);object23(X);object24(X);object25(X);object26(X);object27(X);object28(X);object29(X);object30(X);object31(X);object32(X);object33(X);object34(X);object35(X);object36(X);object37(X);object38(X);object39(X);object40(X);object41(X);object42(X);object43(X);object44(X);object45(X);object46(X).

% role(Name).
role(X) :- role0(X).

% position([Type, Col, Line, Offset]).
position(X) :- position0(X);position1(X);position2(X);position3(X);position4(X);position5(X);position6(X);position7(X);position8(X);position9(X);position10(X);position11(X);position12(X);position13(X);position14(X);position15(X);position16(X);position17(X);position18(X);position19(X);position20(X);position21(X);position22(X);position23(X);position24(X);position25(X);position26(X);position27(X);position28(X);position29(X);position30(X);position31(X);position32(X);position33(X);position34(X);position35(X);position36(X);position37(X);position38(X);position39(X);position40(X);position41(X);position42(X);position43(X);position44(X);position45(X);position46(X);position47(X);position48(X);position49(X);position50(X);position51(X);position52(X);position53(X);position54(X);position55(X).

% positions([Type, Start, End]).
positions(X) :- positions0(X);positions1(X);positions2(X);positions3(X);positions4(X);positions5(X);positions6(X);positions7(X);positions8(X);positions9(X);positions10(X);positions11(X);positions12(X);positions13(X);positions14(X);positions15(X);positions16(X);positions17(X);positions18(X);positions19(X);positions20(X);positions21(X);positions22(X);positions23(X);positions24(X);positions25(X);positions26(X);positions27(X);positions28(X);positions29(X);positions30(X);positions31(X);positions32(X);positions33(X);positions34(X);positions35(X);positions36(X);positions37(X);positions38(X);positions39(X);positions40(X);positions41(X);positions42(X);positions43(X);positions44(X);positions45(X);positions46(X);positions47(X);positions48(X);positions49(X);positions50(X);positions51(X);positions52(X);positions53(X);positions54(X);positions55(X);positions56(X);positions57(X);positions58(X);positions59(X);positions60(X);positions61(X);positions62(X);positions63(X);positions64(X);positions65(X);positions66(X);positions67(X).

% identifier([Type, Name, Pos, [Roles]]).
identifier(X) :- identifier0(X);identifier1(X);identifier2(X);identifier3(X);identifier4(X);identifier5(X);identifier6(X);identifier7(X);identifier8(X);identifier9(X).

% qualified_identifier([Type, [Names], Pos]).
qualified_identifier(_) :- fail.

% comment([Type, Prefix, Suffix, Tab, Text, Block, Pos]).
comment(X) :- comment0(X);comment1(X).

% group([Type, [Nodes], Pos]).
group(X) :- group0(X);group1(X).

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X).

% alias([Type, Name, Node, Pos]).
alias(X) :- alias0(X).

% import([Type, Path, Pos]).
import(X) :- import0(X).

% runtime_import([Type, Path, Pos]).
runtime_import(_) :- fail.

% runtime_reimport([Type, Path, Pos]).
runtime_reimport(_) :- fail.

% inline_import([Type, Path, Pos]).
inline_import(_) :- fail.

% argument([Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]).
argument(X) :- argument0(X).

% function_type([Type, [Arguments], [Returns], Pos]).
function_type(X) :- function_type0(X).

% function([Type, FuncType, Body, Pos]).
function(X) :- function0(X).
