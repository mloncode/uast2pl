value0('csharp:CompilationUnit').
array0([]).
array1([]).
value1(false).
value2('Incomplete').
array2([Arg0]) :- value2(Arg0).
value3('csharp:OpenBraceToken').
value4('{').
position0(['uast:Position', 1, 4, 68]).
position1(['uast:Position', 2, 4, 69]).
positions0(['uast:Positions', Start, End]) :- position0(Start), position1(End).
object0(Obj) :- !,array2(Obj);value3(Obj);value1(Obj);value4(Obj);value4(Obj);value4(Obj);positions0(Obj).
position2(['uast:Position', 1, 3, 47]).
position3(['uast:Position', 2, 16, 341]).
positions1(['uast:Positions', Start, End]) :- position2(Start), position3(End).
value5('Block').
value6('Scope').
array3([Arg0,Arg1]) :- value5(Arg0),value6(Arg1).
array4([]).
array5([]).
value7('Type').
value8('Declaration').
array6([Arg0,Arg1]) :- value7(Arg0),value8(Arg1).
position4(['uast:Position', 9, 7, 100]).
position5(['uast:Position', 10, 14, 333]).
positions2(['uast:Positions', Start, End]) :- position4(Start), position5(End).
position6(['uast:Position', 15, 7, 106]).
positions3(['uast:Positions', Start, End]) :- position4(Start), position6(End).
array7([Arg0]) :- value2(Arg0).
value9('csharp:StaticKeyword').
value10('static').
object1(Obj) :- !,positions3(Obj);array7(Obj);value9(Obj);value1(Obj);value10(Obj);value10(Obj);value10(Obj).
array8([Arg0]) :- object1(Arg0).
positions4(['uast:Positions', _, _]).
positions5(['uast:Positions', _, _]).
position7(['uast:Position', 16, 7, 107]).
position8(['uast:Position', 20, 7, 111]).
positions6(['uast:Positions', Start, End]) :- position7(Start), position8(End).
value11('Primitive').
array9([Arg0,Arg1,Arg2]) :- value7(Arg0),value11(Arg1),value2(Arg2).
value12('csharp:PredefinedType').
array10([Arg0]) :- value2(Arg0).
value13('csharp:VoidKeyword').
value14('void').
positions7(['uast:Positions', Start, End]) :- position7(Start), position8(End).
object2(Obj) :- !,array10(Obj);value13(Obj);value1(Obj);value14(Obj);value14(Obj);value14(Obj);positions7(Obj).
object3(Obj) :- !,value1(Obj);positions6(Obj);array9(Obj);value12(Obj);value1(Obj);value1(Obj);object2(Obj);value1(Obj).
positions8(['uast:Positions', _, _]).
argument0(['uast:Argument', _, Type, _, false, false, false, Pos]) :- object3(Type),positions8(Pos).
function_type0(['uast:FunctionType', [], [Ret0], Pos]) :- argument0(Ret0),positions5(Pos).
position9(['uast:Position', 9, 8, 127]).
positions9(['uast:Positions', Start, End]) :- position9(Start), position5(End).
position10(['uast:Position', 46, 9, 174]).
position11(['uast:Position', 47, 9, 175]).
positions10(['uast:Positions', Start, End]) :- position10(Start), position11(End).
array11([Arg0]) :- value2(Arg0).
value15('csharp:SemicolonToken').
value16(';').
object4(Obj) :- !,positions10(Obj);array11(Obj);value15(Obj);value1(Obj);value16(Obj);value16(Obj);value16(Obj).
position12(['uast:Position', 13, 9, 141]).
positions11(['uast:Positions', Start, End]) :- position12(Start), position10(End).
value17('Function').
value18('Call').
array12([Arg0,Arg1]) :- value17(Arg0),value18(Arg1).
value19('csharp:InvocationExpression').
position13(['uast:Position', 21, 9, 149]).
position14(['uast:Position', 30, 9, 158]).
positions12(['uast:Positions', Start, End]) :- position13(Start), position14(End).
role0('Identifier').
identifier0(['uast:Identifier', 'WriteLine', Pos, [Role0]]) :- positions12(Pos),role0(Role0).
position15(['uast:Position', 20, 9, 148]).
positions13(['uast:Positions', Start, End]) :- position12(Start), position15(End).
identifier1(['uast:Identifier', 'Console', Pos, [Role0]]) :- positions13(Pos),role0(Role0).
value20('.').
positions14(['uast:Positions', Start, End]) :- position15(Start), position13(End).
array13([Arg0]) :- value2(Arg0).
value21('csharp:DotToken').
object5(Obj) :- !,value20(Obj);value20(Obj);positions14(Obj);array13(Obj);value21(Obj);value1(Obj);value20(Obj).
positions15(['uast:Positions', Start, End]) :- position12(Start), position14(End).
value22('Qualified').
array14([Arg0]) :- value22(Arg0).
value23('csharp:SimpleMemberAccessExpression').
object6(Obj) :- !,identifier0(Obj);identifier1(Obj);object5(Obj);positions15(Obj);array14(Obj);value23(Obj);value1(Obj);value1(Obj).
value24('Argument').
value25('List').
array15([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value18(Arg1),value24(Arg2),value25(Arg3).
value26('csharp:ArgumentList').
position16(['uast:Position', 31, 9, 159]).
position17(['uast:Position', 45, 9, 173]).
positions16(['uast:Positions', Start, End]) :- position16(Start), position17(End).
array16([Arg0,Arg1,Arg2]) :- value17(Arg0),value18(Arg1),value24(Arg2).
positions17(['uast:Positions', Start, End]) :- position16(Start), position17(End).
value27('uast:String').
value28('Hello World!').
value29('').
object7(Obj) :- !,positions17(Obj);value27(Obj);value28(Obj);value29(Obj).
position18(['uast:Position', 1, 1, 0]).
positions18(['uast:Positions', Start, End]) :- position18(Start), position18(End).
array17([Arg0]) :- value2(Arg0).
value30('csharp:None').
object8(Obj) :- !,value1(Obj);value29(Obj);positions18(Obj);array17(Obj);value30(Obj).
positions19(['uast:Positions', Start, End]) :- position18(Start), position18(End).
array18([Arg0]) :- value2(Arg0).
object9(Obj) :- !,value30(Obj);value1(Obj);value29(Obj);positions19(Obj);array18(Obj).
value31('csharp:Argument').
object10(Obj) :- !,positions16(Obj);array16(Obj);value1(Obj);object7(Obj);object8(Obj);object9(Obj);value31(Obj);value1(Obj).
array19([Arg0]) :- object10(Arg0).
value32(')').
positions20(['uast:Positions', Start, End]) :- position17(Start), position10(End).
array20([Arg0]) :- value2(Arg0).
value33('csharp:CloseParenToken').
object11(Obj) :- !,value32(Obj);value32(Obj);value32(Obj);positions20(Obj);array20(Obj);value33(Obj);value1(Obj).
positions21(['uast:Positions', Start, End]) :- position14(Start), position16(End).
array21([Arg0]) :- value2(Arg0).
value34('csharp:OpenParenToken').
value35('(').
object12(Obj) :- !,positions21(Obj);array21(Obj);value34(Obj);value1(Obj);value35(Obj);value35(Obj);value35(Obj).
positions22(['uast:Positions', Start, End]) :- position14(Start), position10(End).
object13(Obj) :- !,array15(Obj);value26(Obj);value1(Obj);value1(Obj);array19(Obj);object11(Obj);object12(Obj);positions22(Obj).
object14(Obj) :- !,positions11(Obj);array12(Obj);value19(Obj);value1(Obj);value1(Obj);object6(Obj);object13(Obj).
positions23(['uast:Positions', Start, End]) :- position12(Start), position11(End).
value36('Expression').
value37('Statement').
array22([Arg0,Arg1]) :- value36(Arg0),value37(Arg1).
value38('csharp:ExpressionStatement').
object15(Obj) :- !,object4(Obj);value1(Obj);object14(Obj);positions23(Obj);array22(Obj);value38(Obj);value1(Obj);value1(Obj).
position19(['uast:Position', 56, 12, 291]).
position20(['uast:Position', 57, 12, 292]).
positions24(['uast:Positions', Start, End]) :- position19(Start), position20(End).
array23([Arg0]) :- value2(Arg0).
object16(Obj) :- !,positions24(Obj);array23(Obj);value15(Obj);value1(Obj);value16(Obj);value16(Obj);value16(Obj).
positions25(['uast:Positions', _, _]).
position21(['uast:Position', 13, 11, 189]).
position22(['uast:Position', 59, 11, 235]).
positions26(['uast:Positions', Start, End]) :- position21(Start), position22(End).
comment0(['uast:Comment', ' ', '', '', 'Keep the console window open in debug mode.', false, Pos]) :- positions26(Pos).
position23(['uast:Position', 13, 12, 248]).
position24(['uast:Position', 20, 12, 255]).
positions27(['uast:Positions', Start, End]) :- position23(Start), position24(End).
identifier2(['uast:Identifier', 'Console', Pos, [Role0]]) :- positions27(Pos),role0(Role0).
group0(['uast:Group', [Node0,Node1], Pos]) :- positions25(Pos),comment0(Node0),identifier2(Node1).
position25(['uast:Position', 21, 12, 256]).
positions28(['uast:Positions', Start, End]) :- position24(Start), position25(End).
array24([Arg0]) :- value2(Arg0).
object17(Obj) :- !,positions28(Obj);array24(Obj);value21(Obj);value1(Obj);value20(Obj);value20(Obj);value20(Obj).
position26(['uast:Position', 30, 12, 265]).
positions29(['uast:Positions', Start, End]) :- position23(Start), position26(End).
array25([Arg0]) :- value22(Arg0).
positions30(['uast:Positions', Start, End]) :- position25(Start), position26(End).
identifier3(['uast:Identifier', 'WriteLine', Pos, [Role0]]) :- positions30(Pos),role0(Role0).
object18(Obj) :- !,group0(Obj);object17(Obj);positions29(Obj);array25(Obj);value23(Obj);value1(Obj);value1(Obj);identifier3(Obj).
position27(['uast:Position', 31, 12, 266]).
position28(['uast:Position', 55, 12, 290]).
positions31(['uast:Positions', Start, End]) :- position27(Start), position28(End).
value39('Press any key to exit.').
object19(Obj) :- !,positions31(Obj);value27(Obj);value39(Obj);value29(Obj).
positions32(['uast:Positions', Start, End]) :- position18(Start), position18(End).
array26([Arg0]) :- value2(Arg0).
object20(Obj) :- !,value1(Obj);value29(Obj);positions32(Obj);array26(Obj);value30(Obj).
positions33(['uast:Positions', Start, End]) :- position27(Start), position28(End).
array27([Arg0,Arg1,Arg2]) :- value17(Arg0),value18(Arg1),value24(Arg2).
positions34(['uast:Positions', Start, End]) :- position18(Start), position18(End).
array28([Arg0]) :- value2(Arg0).
object21(Obj) :- !,value29(Obj);positions34(Obj);array28(Obj);value30(Obj);value1(Obj).
object22(Obj) :- !,value1(Obj);object19(Obj);object20(Obj);positions33(Obj);array27(Obj);value31(Obj);value1(Obj);object21(Obj).
array29([Arg0]) :- object22(Arg0).
positions35(['uast:Positions', Start, End]) :- position28(Start), position19(End).
array30([Arg0]) :- value2(Arg0).
object23(Obj) :- !,value1(Obj);value32(Obj);value32(Obj);value32(Obj);positions35(Obj);array30(Obj);value33(Obj).
positions36(['uast:Positions', Start, End]) :- position26(Start), position27(End).
array31([Arg0]) :- value2(Arg0).
object24(Obj) :- !,value35(Obj);value35(Obj);value35(Obj);positions36(Obj);array31(Obj);value34(Obj);value1(Obj).
positions37(['uast:Positions', Start, End]) :- position26(Start), position19(End).
array32([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value18(Arg1),value24(Arg2),value25(Arg3).
object25(Obj) :- !,value26(Obj);value1(Obj);value1(Obj);array29(Obj);object23(Obj);object24(Obj);positions37(Obj);array32(Obj).
positions38(['uast:Positions', Start, End]) :- position23(Start), position19(End).
array33([Arg0,Arg1]) :- value17(Arg0),value18(Arg1).
object26(Obj) :- !,value1(Obj);object18(Obj);object25(Obj);positions38(Obj);array33(Obj);value19(Obj);value1(Obj).
positions39(['uast:Positions', Start, End]) :- position23(Start), position20(End).
array34([Arg0,Arg1]) :- value36(Arg0),value37(Arg1).
object27(Obj) :- !,value38(Obj);value1(Obj);value1(Obj);object16(Obj);value1(Obj);object26(Obj);positions39(Obj);array34(Obj).
position29(['uast:Position', 13, 13, 305]).
position30(['uast:Position', 30, 13, 322]).
positions40(['uast:Positions', Start, End]) :- position29(Start), position30(End).
array35([Arg0,Arg1]) :- value17(Arg0),value18(Arg1).
position31(['uast:Position', 21, 13, 313]).
position32(['uast:Position', 28, 13, 320]).
positions41(['uast:Positions', Start, End]) :- position31(Start), position32(End).
identifier4(['uast:Identifier', 'ReadKey', Pos, [Role0]]) :- positions41(Pos),role0(Role0).
position33(['uast:Position', 20, 13, 312]).
positions42(['uast:Positions', Start, End]) :- position29(Start), position33(End).
identifier5(['uast:Identifier', 'Console', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
positions43(['uast:Positions', Start, End]) :- position33(Start), position31(End).
array36([Arg0]) :- value2(Arg0).
object28(Obj) :- !,positions43(Obj);array36(Obj);value21(Obj);value1(Obj);value20(Obj);value20(Obj);value20(Obj).
positions44(['uast:Positions', Start, End]) :- position29(Start), position32(End).
array37([Arg0]) :- value22(Arg0).
object29(Obj) :- !,value1(Obj);identifier4(Obj);identifier5(Obj);object28(Obj);positions44(Obj);array37(Obj);value23(Obj);value1(Obj).
array38([]).
position34(['uast:Position', 29, 13, 321]).
positions45(['uast:Positions', Start, End]) :- position34(Start), position30(End).
array39([Arg0]) :- value2(Arg0).
object30(Obj) :- !,value32(Obj);value32(Obj);positions45(Obj);array39(Obj);value33(Obj);value1(Obj);value32(Obj).
positions46(['uast:Positions', Start, End]) :- position32(Start), position34(End).
array40([Arg0]) :- value2(Arg0).
object31(Obj) :- !,value34(Obj);value1(Obj);value35(Obj);value35(Obj);value35(Obj);positions46(Obj);array40(Obj).
positions47(['uast:Positions', Start, End]) :- position32(Start), position30(End).
array41([Arg0,Arg1,Arg2,Arg3]) :- value17(Arg0),value18(Arg1),value24(Arg2),value25(Arg3).
object32(Obj) :- !,value1(Obj);value1(Obj);array38(Obj);object30(Obj);object31(Obj);positions47(Obj);array41(Obj);value26(Obj).
object33(Obj) :- !,positions40(Obj);array35(Obj);value19(Obj);value1(Obj);value1(Obj);object29(Obj);object32(Obj).
position35(['uast:Position', 31, 13, 323]).
positions48(['uast:Positions', Start, End]) :- position29(Start), position35(End).
array42([Arg0,Arg1]) :- value36(Arg0),value37(Arg1).
positions49(['uast:Positions', Start, End]) :- position30(Start), position35(End).
array43([Arg0]) :- value2(Arg0).
object34(Obj) :- !,value1(Obj);value16(Obj);value16(Obj);value16(Obj);positions49(Obj);array43(Obj);value15(Obj).
object35(Obj) :- !,object33(Obj);positions48(Obj);array42(Obj);value38(Obj);value1(Obj);value1(Obj);object34(Obj);value1(Obj).
block0(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions9(Pos),object15(Stmt0),object27(Stmt1),object35(Stmt2).
positions50(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions50(Pos).
position36(['uast:Position', 21, 7, 112]).
position37(['uast:Position', 25, 7, 116]).
positions51(['uast:Positions', Start, End]) :- position36(Start), position37(End).
identifier6(['uast:Identifier', 'Main', Pos, [Role0]]) :- positions51(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier6(Name),function0(Node),positions4(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions2(Pos),array8(Node0),alias0(Node1).
array44([Arg0]) :- function_group0(Arg0).
position38(['uast:Position', 5, 6, 90]).
position39(['uast:Position', 6, 6, 91]).
positions52(['uast:Positions', Start, End]) :- position38(Start), position39(End).
array45([Arg0]) :- value2(Arg0).
object36(Obj) :- !,value3(Obj);value1(Obj);value4(Obj);value4(Obj);value4(Obj);positions52(Obj);array45(Obj).
positions53(['uast:Positions', Start, End]) :- position18(Start), position18(End).
array46([Arg0]) :- value2(Arg0).
object37(Obj) :- !,value29(Obj);positions53(Obj);array46(Obj);value30(Obj);value1(Obj).
value40(0).
array47([]).
value41('class').
position40(['uast:Position', 5, 5, 74]).
position41(['uast:Position', 10, 5, 79]).
positions54(['uast:Positions', Start, End]) :- position40(Start), position41(End).
array48([Arg0,Arg1]) :- value7(Arg0),value8(Arg1).
value42('csharp:ClassKeyword').
object38(Obj) :- !,value1(Obj);value41(Obj);value41(Obj);value41(Obj);positions54(Obj);array48(Obj);value42(Obj).
value43('csharp:CloseBraceToken').
value44('}').
position42(['uast:Position', 5, 15, 338]).
position43(['uast:Position', 6, 15, 339]).
positions55(['uast:Positions', Start, End]) :- position42(Start), position43(End).
array49([Arg0]) :- value2(Arg0).
object39(Obj) :- !,value43(Obj);value1(Obj);value44(Obj);value44(Obj);value44(Obj);positions55(Obj);array49(Obj).
positions56(['uast:Positions', Start, End]) :- position40(Start), position43(End).
value45('csharp:ClassDeclaration').
array50([]).
position44(['uast:Position', 11, 5, 80]).
position45(['uast:Position', 16, 5, 85]).
positions57(['uast:Positions', Start, End]) :- position44(Start), position45(End).
identifier7(['uast:Identifier', 'Hello', Pos, [Role0]]) :- positions57(Pos),role0(Role0).
object40(Obj) :- !,array5(Obj);array6(Obj);array44(Obj);object36(Obj);object37(Obj);value40(Obj);array47(Obj);value1(Obj);object38(Obj);object39(Obj);positions56(Obj);value45(Obj);value1(Obj);array50(Obj);identifier7(Obj).
array51([Arg0]) :- object40(Arg0).
array52([]).
position46(['uast:Position', 1, 16, 340]).
positions58(['uast:Positions', Start, End]) :- position46(Start), position3(End).
array53([Arg0]) :- value2(Arg0).
object41(Obj) :- !,value44(Obj);positions58(Obj);array53(Obj);value43(Obj);value1(Obj);value44(Obj);value44(Obj).
positions59(['uast:Positions', Start, End]) :- position18(Start), position18(End).
array54([Arg0]) :- value2(Arg0).
object42(Obj) :- !,positions59(Obj);array54(Obj);value30(Obj);value1(Obj);value29(Obj).
value46('csharp:NamespaceDeclaration').
position47(['uast:Position', 11, 3, 57]).
position48(['uast:Position', 21, 3, 67]).
positions60(['uast:Positions', Start, End]) :- position47(Start), position48(End).
identifier8(['uast:Identifier', 'HelloWorld', Pos, [Role0]]) :- positions60(Pos),role0(Role0).
array55([Arg0]) :- value5(Arg0).
value47('csharp:NamespaceKeyword').
value48('namespace').
position49(['uast:Position', 10, 3, 56]).
positions61(['uast:Positions', Start, End]) :- position2(Start), position49(End).
object43(Obj) :- !,array55(Obj);value47(Obj);value1(Obj);value48(Obj);value48(Obj);value48(Obj);positions61(Obj).
object44(Obj) :- !,object0(Obj);positions1(Obj);array3(Obj);array4(Obj);value1(Obj);array51(Obj);array52(Obj);object41(Obj);object42(Obj);value46(Obj);value1(Obj);identifier8(Obj);object43(Obj).
array56([Arg0]) :- object44(Arg0).
positions62(['uast:Positions', _, _]).
position50(['uast:Position', 33, 1, 32]).
positions63(['uast:Positions', Start, End]) :- position18(Start), position50(End).
comment1(['uast:Comment', ' ', '', '', 'A Hello World! program in C#.', false, Pos]) :- positions63(Pos).
position51(['uast:Position', 1, 2, 33]).
position52(['uast:Position', 14, 2, 46]).
positions64(['uast:Positions', Start, End]) :- position51(Start), position52(End).
position53(['uast:Position', 7, 2, 39]).
position54(['uast:Position', 13, 2, 45]).
positions65(['uast:Positions', Start, End]) :- position53(Start), position54(End).
identifier9(['uast:Identifier', 'System', Pos, [Role0]]) :- positions65(Pos),role0(Role0).
import0(['uast:Import', Path, Pos]) :- identifier9(Path),positions64(Pos).
group1(['uast:Group', [Node0,Node1], Pos]) :- positions62(Pos),comment1(Node0),import0(Node1).
array57([Arg0]) :- group1(Arg0).
position55(['uast:Position', 1, 17, 342]).
positions66(['uast:Positions', Start, End]) :- position51(Start), position55(End).
value49('File').
value50('Module').
array58([Arg0,Arg1]) :- value49(Arg0),value50(Arg1).
positions67(['uast:Positions', Start, End]) :- position55(Start), position55(End).
value51('Noop').
array59([Arg0,Arg1]) :- value51(Arg0),value2(Arg1).
value52('csharp:EndOfFileToken').
object45(Obj) :- !,positions67(Obj);array59(Obj);value52(Obj);value1(Obj);value29(Obj);value29(Obj);value29(Obj).
object46(Obj) :- !,value0(Obj);array0(Obj);array1(Obj);value1(Obj);array56(Obj);array57(Obj);positions66(Obj);array58(Obj);object45(Obj);value1(Obj).

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
