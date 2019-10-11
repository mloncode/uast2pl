# uast2pl
This is kind of [Universal Abstract Syntax Tree](https://doc.bblf.sh/uast/uast-specification-v2.html) to Prolog transpiler.
It takes *UAST* node as an input and tries to produce equivalent prolog program.

### Tools
- ./cmd/uast2pl: transforms _uast_ into a prolog program.
```bash
Usage of ./uast2pl:
  -f string
    	input file to parse
  -o string
    	output file (by default stdio)
  -s string
    	address:port of babelfish server (default "localhost:9432")
```

- ./cmd/query: embedded _wam_ lets query prolog DB.
```bash
Usage of ./query:
  -f value
    	list of input prolog files
  -o string
    	output file (by default stdio)
  -q string
    	prolog query
  -v value
    	list of variables to print
```

### Example
For a given fib.py file:
```python
def fib(n, a = 0, b = 1):
    if n == 0:
        return a
    if n == 1:
        return b
    return fib(n - 1, b, a + b);
```

we get following *UAST*:
<details>
<summary>UAST</summary>
<p>
    
```
{ '@type': "python:Module",
   '@role': [File, Module],
   '@pos': { '@type': "uast:Positions",
   },
   body: [
      { '@type': "uast:FunctionGroup",
         '@pos': { '@type': "uast:Positions",
            start: { '@type': "uast:Position",
               offset: 4,
               line: 1,
               col: 5,
            },
            end: { '@type': "uast:Position",
               offset: 7,
               line: 1,
               col: 8,
            },
         },
         Nodes: [
            {
               async: false,
               comments: {},
               decorators: [],
            },
            { '@type': "uast:Alias",
               Name: { '@type': "uast:Identifier",
                  Name: "fib",
               },
               Node: { '@type': "uast:Function",
                  Body: { '@type': "uast:Block",
                     Statements: [
                        { '@type': "python:If",
                           '@token': "if",
                           '@role': [Expression, If],
                           '@pos': { '@type': "uast:Positions",
                              start: { '@type': "uast:Position",
                                 offset: 30,
                                 line: 2,
                                 col: 5,
                              },
                              end: { '@type': "uast:Position",
                                 offset: 32,
                                 line: 2,
                                 col: 7,
                              },
                           },
                           body: { '@type': "python:If.body",
                              '@role': [Body, If, Then],
                              'body_stmts': [
                                 { '@type': "python:Return",
                                    '@token': "return",
                                    '@role': [Return, Statement],
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 49,
                                          line: 3,
                                          col: 9,
                                       },
                                       end: { '@type': "uast:Position",
                                          offset: 55,
                                          line: 3,
                                          col: 15,
                                       },
                                    },
                                    value: { '@type': "python:BoxedName",
                                       '@role': [Unannotated],
                                       'boxed_value': { '@type': "uast:Identifier",
                                          '@pos': { '@type': "uast:Positions",
                                             start: { '@type': "uast:Position",
                                                offset: 56,
                                                line: 3,
                                                col: 16,
                                             },
                                             end: { '@type': "uast:Position",
                                                offset: 57,
                                                line: 3,
                                                col: 17,
                                             },
                                          },
                                          Name: "a",
                                       },
                                       ctx: "Load",
                                    },
                                 },
                              ],
                           },
                           orelse: { '@type': "python:If.orelse",
                              '@token': "else",
                              '@role': [Body, Else, If],
                              'else_stmts': [],
                           },
                           test: { '@type': "python:Compare",
                              '@role': [Binary, Condition, Expression, If],
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 33,
                                    line: 2,
                                    col: 8,
                                 },
                              },
                              comparators: { '@type': "python:Compare.comparators",
                                 '@role': [Expression, Right],
                                 comparators: [
                                    { '@type': "python:Num",
                                       '@token': 0,
                                       '@role': [Expression, Literal, Number, Primitive],
                                       '@pos': { '@type': "uast:Positions",
                                          start: { '@type': "uast:Position",
                                             offset: 38,
                                             line: 2,
                                             col: 13,
                                          },
                                          end: { '@type': "uast:Position",
                                             offset: 39,
                                             line: 2,
                                             col: 14,
                                          },
                                       },
                                    },
                                 ],
                              },
                              left: { '@type': "python:BoxedName",
                                 '@role': [Expression, Left],
                                 'boxed_value': { '@type': "uast:Identifier",
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 33,
                                          line: 2,
                                          col: 8,
                                       },
                                       end: { '@type': "uast:Position",
                                          offset: 34,
                                          line: 2,
                                          col: 9,
                                       },
                                    },
                                    Name: "n",
                                 },
                                 ctx: "Load",
                              },
                              ops: { '@type': "python:Compare.ops",
                                 '@role': [Expression],
                                 ops: [
                                    { '@type': "python:Eq",
                                       '@token': "==",
                                       '@role': [Equal, Operator, Relational],
                                       '@pos': { '@type': "uast:Positions",
                                       },
                                    },
                                 ],
                              },
                           },
                        },
                        { '@type': "python:If",
                           '@token': "if",
                           '@role': [Expression, If],
                           '@pos': { '@type': "uast:Positions",
                              start: { '@type': "uast:Position",
                                 offset: 62,
                                 line: 4,
                                 col: 5,
                              },
                              end: { '@type': "uast:Position",
                                 offset: 64,
                                 line: 4,
                                 col: 7,
                              },
                           },
                           body: { '@type': "python:If.body",
                              '@role': [Body, If, Then],
                              'body_stmts': [
                                 { '@type': "python:Return",
                                    '@token': "return",
                                    '@role': [Return, Statement],
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 81,
                                          line: 5,
                                          col: 9,
                                       },
                                       end: { '@type': "uast:Position",
                                          offset: 87,
                                          line: 5,
                                          col: 15,
                                       },
                                    },
                                    value: { '@type': "python:BoxedName",
                                       '@role': [Unannotated],
                                       'boxed_value': { '@type': "uast:Identifier",
                                          '@pos': { '@type': "uast:Positions",
                                             start: { '@type': "uast:Position",
                                                offset: 88,
                                                line: 5,
                                                col: 16,
                                             },
                                             end: { '@type': "uast:Position",
                                                offset: 89,
                                                line: 5,
                                                col: 17,
                                             },
                                          },
                                          Name: "b",
                                       },
                                       ctx: "Load",
                                    },
                                 },
                              ],
                           },
                           orelse: { '@type': "python:If.orelse",
                              '@token': "else",
                              '@role': [Body, Else, If],
                              'else_stmts': [],
                           },
                           test: { '@type': "python:Compare",
                              '@role': [Binary, Condition, Expression, If],
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 65,
                                    line: 4,
                                    col: 8,
                                 },
                              },
                              comparators: { '@type': "python:Compare.comparators",
                                 '@role': [Expression, Right],
                                 comparators: [
                                    { '@type': "python:Num",
                                       '@token': 1,
                                       '@role': [Expression, Literal, Number, Primitive],
                                       '@pos': { '@type': "uast:Positions",
                                          start: { '@type': "uast:Position",
                                             offset: 70,
                                             line: 4,
                                             col: 13,
                                          },
                                          end: { '@type': "uast:Position",
                                             offset: 71,
                                             line: 4,
                                             col: 14,
                                          },
                                       },
                                    },
                                 ],
                              },
                              left: { '@type': "python:BoxedName",
                                 '@role': [Expression, Left],
                                 'boxed_value': { '@type': "uast:Identifier",
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 65,
                                          line: 4,
                                          col: 8,
                                       },
                                       end: { '@type': "uast:Position",
                                          offset: 66,
                                          line: 4,
                                          col: 9,
                                       },
                                    },
                                    Name: "n",
                                 },
                                 ctx: "Load",
                              },
                              ops: { '@type': "python:Compare.ops",
                                 '@role': [Expression],
                                 ops: [
                                    { '@type': "python:Eq",
                                       '@token': "==",
                                       '@role': [Equal, Operator, Relational],
                                       '@pos': { '@type': "uast:Positions",
                                       },
                                    },
                                 ],
                              },
                           },
                        },
                        { '@type': "python:Return",
                           '@token': "return",
                           '@role': [Return, Statement],
                           '@pos': { '@type': "uast:Positions",
                              start: { '@type': "uast:Position",
                                 offset: 94,
                                 line: 6,
                                 col: 5,
                              },
                              end: { '@type': "uast:Position",
                                 offset: 100,
                                 line: 6,
                                 col: 11,
                              },
                           },
                           value: { '@type': "python:Call",
                              '@role': [Call, Expression, Function],
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 101,
                                    line: 6,
                                    col: 12,
                                 },
                              },
                              args: [
                                 { '@type': "python:BinOp",
                                    '@role': [Argument, Binary, Call, Expression, Function, Name, Positional],
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 105,
                                          line: 6,
                                          col: 16,
                                       },
                                    },
                                    left: { '@type': "python:BoxedName",
                                       '@role': [Binary, Expression, Left],
                                       'boxed_value': { '@type': "uast:Identifier",
                                          '@pos': { '@type': "uast:Positions",
                                             start: { '@type': "uast:Position",
                                                offset: 105,
                                                line: 6,
                                                col: 16,
                                             },
                                             end: { '@type': "uast:Position",
                                                offset: 106,
                                                line: 6,
                                                col: 17,
                                             },
                                          },
                                          Name: "n",
                                       },
                                       ctx: "Load",
                                    },
                                    op: { '@type': "python:Sub",
                                       '@token': "-",
                                       '@role': [Arithmetic, Binary, Operator, Substract],
                                       '@pos': { '@type': "uast:Positions",
                                       },
                                    },
                                    right: { '@type': "python:Num",
                                       '@token': 1,
                                       '@role': [Binary, Expression, Literal, Number, Primitive, Right],
                                       '@pos': { '@type': "uast:Positions",
                                          start: { '@type': "uast:Position",
                                             offset: 109,
                                             line: 6,
                                             col: 20,
                                          },
                                          end: { '@type': "uast:Position",
                                             offset: 110,
                                             line: 6,
                                             col: 21,
                                          },
                                       },
                                    },
                                 },
                                 { '@type': "python:BoxedName",
                                    '@role': [Argument, Call, Function, Name, Positional],
                                    'boxed_value': { '@type': "uast:Identifier",
                                       '@pos': { '@type': "uast:Positions",
                                          start: { '@type': "uast:Position",
                                             offset: 112,
                                             line: 6,
                                             col: 23,
                                          },
                                          end: { '@type': "uast:Position",
                                             offset: 113,
                                             line: 6,
                                             col: 24,
                                          },
                                       },
                                       Name: "b",
                                    },
                                    ctx: "Load",
                                 },
                                 { '@type': "python:BinOp",
                                    '@role': [Argument, Binary, Call, Expression, Function, Name, Positional],
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 115,
                                          line: 6,
                                          col: 26,
                                       },
                                    },
                                    left: { '@type': "python:BoxedName",
                                       '@role': [Binary, Expression, Left],
                                       'boxed_value': { '@type': "uast:Identifier",
                                          '@pos': { '@type': "uast:Positions",
                                             start: { '@type': "uast:Position",
                                                offset: 115,
                                                line: 6,
                                                col: 26,
                                             },
                                             end: { '@type': "uast:Position",
                                                offset: 116,
                                                line: 6,
                                                col: 27,
                                             },
                                          },
                                          Name: "a",
                                       },
                                       ctx: "Load",
                                    },
                                    op: { '@type': "python:Add",
                                       '@token': "+",
                                       '@role': [Add, Arithmetic, Binary, Operator],
                                       '@pos': { '@type': "uast:Positions",
                                       },
                                    },
                                    right: { '@type': "python:BoxedName",
                                       '@role': [Binary, Expression, Right],
                                       'boxed_value': { '@type': "uast:Identifier",
                                          '@pos': { '@type': "uast:Positions",
                                             start: { '@type': "uast:Position",
                                                offset: 119,
                                                line: 6,
                                                col: 30,
                                             },
                                             end: { '@type': "uast:Position",
                                                offset: 120,
                                                line: 6,
                                                col: 31,
                                             },
                                          },
                                          Name: "b",
                                       },
                                       ctx: "Load",
                                    },
                                 },
                              ],
                              func: { '@type': "python:BoxedName",
                                 '@role': [Call, Callee],
                                 'boxed_value': { '@type': "uast:Identifier",
                                    '@pos': { '@type': "uast:Positions",
                                       start: { '@type': "uast:Position",
                                          offset: 101,
                                          line: 6,
                                          col: 12,
                                       },
                                       end: { '@type': "uast:Position",
                                          offset: 104,
                                          line: 6,
                                          col: 15,
                                       },
                                    },
                                    Name: "fib",
                                 },
                                 ctx: "Load",
                              },
                              keywords: [],
                           },
                        },
                     ],
                  },
                  Type: { '@type': "uast:FunctionType",
                     Arguments: [
                        { '@type': "uast:Argument",
                           '@pos': { '@type': "uast:Positions",
                              start: { '@type': "uast:Position",
                                 offset: 8,
                                 line: 1,
                                 col: 9,
                              },
                              end: { '@type': "uast:Position",
                                 offset: 9,
                                 line: 1,
                                 col: 10,
                              },
                           },
                           MapVariadic: false,
                           Name: { '@type': "uast:Identifier",
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 8,
                                    line: 1,
                                    col: 9,
                                 },
                                 end: { '@type': "uast:Position",
                                    offset: 9,
                                    line: 1,
                                    col: 10,
                                 },
                              },
                              Name: "n",
                           },
                           Receiver: false,
                           Type: ~,
                           Variadic: false,
                        },
                        { '@type': "uast:Argument",
                           '@pos': { '@type': "uast:Positions",
                              start: { '@type': "uast:Position",
                                 offset: 11,
                                 line: 1,
                                 col: 12,
                              },
                              end: { '@type': "uast:Position",
                                 offset: 12,
                                 line: 1,
                                 col: 13,
                              },
                           },
                           Init: { '@type': "python:Num",
                              '@token': 0,
                              '@role': [Expression, Literal, Number, Primitive],
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 15,
                                    line: 1,
                                    col: 16,
                                 },
                                 end: { '@type': "uast:Position",
                                    offset: 16,
                                    line: 1,
                                    col: 17,
                                 },
                              },
                           },
                           MapVariadic: false,
                           Name: { '@type': "uast:Identifier",
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 11,
                                    line: 1,
                                    col: 12,
                                 },
                                 end: { '@type': "uast:Position",
                                    offset: 12,
                                    line: 1,
                                    col: 13,
                                 },
                              },
                              Name: "a",
                           },
                           Receiver: false,
                           Type: ~,
                           Variadic: false,
                        },
                        { '@type': "uast:Argument",
                           '@pos': { '@type': "uast:Positions",
                              start: { '@type': "uast:Position",
                                 offset: 18,
                                 line: 1,
                                 col: 19,
                              },
                              end: { '@type': "uast:Position",
                                 offset: 19,
                                 line: 1,
                                 col: 20,
                              },
                           },
                           Init: { '@type': "python:Num",
                              '@token': 1,
                              '@role': [Expression, Literal, Number, Primitive],
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 22,
                                    line: 1,
                                    col: 23,
                                 },
                                 end: { '@type': "uast:Position",
                                    offset: 23,
                                    line: 1,
                                    col: 24,
                                 },
                              },
                           },
                           MapVariadic: false,
                           Name: { '@type': "uast:Identifier",
                              '@pos': { '@type': "uast:Positions",
                                 start: { '@type': "uast:Position",
                                    offset: 18,
                                    line: 1,
                                    col: 19,
                                 },
                                 end: { '@type': "uast:Position",
                                    offset: 19,
                                    line: 1,
                                    col: 20,
                                 },
                              },
                              Name: "b",
                           },
                           Receiver: false,
                           Type: ~,
                           Variadic: false,
                        },
                     ],
                     Returns: [
                        { '@type': "uast:Argument",
                           Init: { '@type': "uast:Identifier",
                              Name: "None",
                           },
                           MapVariadic: false,
                           Name: ~,
                           Receiver: false,
                           Type: ~,
                           Variadic: false,
                        },
                     ],
                  },
               },
            },
         ],
      },
   ],
}
```

</p>
</details>


what can be transformed into a prolog: `./uast2pl -f fib.py -o fib.py.P`
<details>
<summary>prolog program</summary>
<p>
    
```prolog
positions0(['uast:Positions', _, _]).
value0('File').
value1('Module').
array0([Arg0,Arg1]) :- value0(Arg0),value1(Arg1).
value2('python:Module').
position0(['uast:Position', 5, 1, 4]).
position1(['uast:Position', 8, 1, 7]).
positions1(['uast:Positions', Start, End]) :- position0(Start), position1(End).
value3(false).
object0(_).
array1([]).
object1(Obj) :- !,value3(Obj);object0(Obj);array1(Obj).
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
value4('python:Num').
value5(0).
position6(['uast:Position', 16, 1, 15]).
position7(['uast:Position', 17, 1, 16]).
positions7(['uast:Positions', Start, End]) :- position6(Start), position7(End).
value6('Expression').
value7('Literal').
value8('Number').
value9('Primitive').
array2([Arg0,Arg1,Arg2,Arg3]) :- value6(Arg0),value7(Arg1),value8(Arg2),value9(Arg3).
object2(Obj) :- !,value4(Obj);value5(Obj);positions7(Obj);array2(Obj).
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
array3([Arg0,Arg1,Arg2,Arg3]) :- value6(Arg0),value7(Arg1),value8(Arg2),value9(Arg3).
object3(Obj) :- !,value4(Obj);value10(Obj);positions10(Obj);array3(Obj).
positions11(['uast:Positions', Start, End]) :- position8(Start), position9(End).
argument2(['uast:Argument', Name, _, Init, false, false, false, Pos]) :- identifier2(Name),object3(Init),positions11(Pos).
positions12(['uast:Positions', _, _]).
identifier3(['uast:Identifier', 'None', Pos, [Role0]]) :- positions12(Pos),role0(Role0).
positions13(['uast:Positions', _, _]).
argument3(['uast:Argument', _, _, Init, false, false, false, Pos]) :- identifier3(Init),positions13(Pos).
function_type0(['uast:FunctionType', [Arg0,Arg1,Arg2], [Ret0], Pos]) :- argument0(Arg0),argument1(Arg1),argument2(Arg2),argument3(Ret0),positions3(Pos).
positions14(['uast:Positions', _, _]).
position12(['uast:Position', 5, 2, 30]).
position13(['uast:Position', 7, 2, 32]).
positions15(['uast:Positions', Start, End]) :- position12(Start), position13(End).
value11('If').
array4([Arg0,Arg1]) :- value11(Arg0),value6(Arg1).
value12('python:If').
value13('python:If.body').
value14('python:Return').
value15('return').
value16('Load').
value17('python:BoxedName').
position14(['uast:Position', 16, 3, 56]).
position15(['uast:Position', 17, 3, 57]).
positions16(['uast:Positions', Start, End]) :- position14(Start), position15(End).
identifier4(['uast:Identifier', 'a', Pos, [Role0]]) :- positions16(Pos),role0(Role0).
object4(Obj) :- !,value16(Obj);value17(Obj);identifier4(Obj).
position16(['uast:Position', 9, 3, 49]).
position17(['uast:Position', 15, 3, 55]).
positions17(['uast:Positions', Start, End]) :- position16(Start), position17(End).
value18('Return').
value19('Statement').
array5([Arg0,Arg1]) :- value18(Arg0),value19(Arg1).
object5(Obj) :- !,value14(Obj);value15(Obj);object4(Obj);positions17(Obj);array5(Obj).
array6([Arg0]) :- object5(Arg0).
value20('Body').
value21('Then').
array7([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value21(Arg2).
object6(Obj) :- !,value13(Obj);array6(Obj);array7(Obj).
value22('if').
value23('Else').
array8([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value23(Arg2).
value24('python:If.orelse').
value25('else').
array9([]).
object7(Obj) :- !,array8(Obj);value24(Obj);value25(Obj);array9(Obj).
position18(['uast:Position', 8, 2, 33]).
positions18(['uast:Positions', Start, _]) :- position18(Start).
value26('Binary').
value27('Condition').
array10([Arg0,Arg1,Arg2,Arg3]) :- value6(Arg0),value26(Arg1),value27(Arg2),value11(Arg3).
value28('python:Compare').
value29('Right').
array11([Arg0,Arg1]) :- value6(Arg0),value29(Arg1).
value30('python:Compare.comparators').
position19(['uast:Position', 13, 2, 38]).
position20(['uast:Position', 14, 2, 39]).
positions19(['uast:Positions', Start, End]) :- position19(Start), position20(End).
array12([Arg0,Arg1,Arg2,Arg3]) :- value6(Arg0),value7(Arg1),value8(Arg2),value9(Arg3).
object8(Obj) :- !,positions19(Obj);array12(Obj);value4(Obj);value5(Obj).
array13([Arg0]) :- object8(Arg0).
object9(Obj) :- !,array11(Obj);value30(Obj);array13(Obj).
value31('Left').
array14([Arg0,Arg1]) :- value6(Arg0),value31(Arg1).
position21(['uast:Position', 9, 2, 34]).
positions20(['uast:Positions', Start, End]) :- position18(Start), position21(End).
identifier5(['uast:Identifier', 'n', Pos, [Role0]]) :- positions20(Pos),role0(Role0).
object10(Obj) :- !,array14(Obj);value17(Obj);identifier5(Obj);value16(Obj).
value32('==').
positions21(['uast:Positions', _, _]).
value33('Operator').
value34('Relational').
value35('Equal').
array15([Arg0,Arg1,Arg2]) :- value33(Arg0),value34(Arg1),value35(Arg2).
value36('python:Eq').
object11(Obj) :- !,value32(Obj);positions21(Obj);array15(Obj);value36(Obj).
array16([Arg0]) :- object11(Arg0).
array17([Arg0]) :- value6(Arg0).
value37('python:Compare.ops').
object12(Obj) :- !,array16(Obj);array17(Obj);value37(Obj).
object13(Obj) :- !,positions18(Obj);array10(Obj);value28(Obj);object9(Obj);object10(Obj);object12(Obj).
object14(Obj) :- !,positions15(Obj);array4(Obj);value12(Obj);object6(Obj);value22(Obj);object7(Obj);object13(Obj).
array18([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value21(Arg2).
position22(['uast:Position', 16, 5, 88]).
position23(['uast:Position', 17, 5, 89]).
positions22(['uast:Positions', Start, End]) :- position22(Start), position23(End).
identifier6(['uast:Identifier', 'b', Pos, [Role0]]) :- positions22(Pos),role0(Role0).
object15(Obj) :- !,value17(Obj);identifier6(Obj);value16(Obj).
position24(['uast:Position', 9, 5, 81]).
position25(['uast:Position', 15, 5, 87]).
positions23(['uast:Positions', Start, End]) :- position24(Start), position25(End).
array19([Arg0,Arg1]) :- value18(Arg0),value19(Arg1).
object16(Obj) :- !,value15(Obj);object15(Obj);positions23(Obj);array19(Obj);value14(Obj).
array20([Arg0]) :- object16(Arg0).
object17(Obj) :- !,array18(Obj);value13(Obj);array20(Obj).
array21([]).
array22([Arg0,Arg1,Arg2]) :- value11(Arg0),value20(Arg1),value23(Arg2).
object18(Obj) :- !,value25(Obj);array21(Obj);array22(Obj);value24(Obj).
array23([Arg0,Arg1,Arg2,Arg3]) :- value6(Arg0),value26(Arg1),value27(Arg2),value11(Arg3).
array24([Arg0,Arg1]) :- value6(Arg0),value29(Arg1).
position26(['uast:Position', 13, 4, 70]).
position27(['uast:Position', 14, 4, 71]).
positions24(['uast:Positions', Start, End]) :- position26(Start), position27(End).
array25([Arg0,Arg1,Arg2,Arg3]) :- value6(Arg0),value7(Arg1),value8(Arg2),value9(Arg3).
object19(Obj) :- !,value10(Obj);positions24(Obj);array25(Obj);value4(Obj).
array26([Arg0]) :- object19(Arg0).
object20(Obj) :- !,array24(Obj);value30(Obj);array26(Obj).
position28(['uast:Position', 8, 4, 65]).
position29(['uast:Position', 9, 4, 66]).
positions25(['uast:Positions', Start, End]) :- position28(Start), position29(End).
identifier7(['uast:Identifier', 'n', Pos, [Role0]]) :- positions25(Pos),role0(Role0).
array27([Arg0,Arg1]) :- value6(Arg0),value31(Arg1).
object21(Obj) :- !,value17(Obj);identifier7(Obj);value16(Obj);array27(Obj).
array28([Arg0]) :- value6(Arg0).
positions26(['uast:Positions', _, _]).
array29([Arg0,Arg1,Arg2]) :- value33(Arg0),value34(Arg1),value35(Arg2).
object22(Obj) :- !,value32(Obj);positions26(Obj);array29(Obj);value36(Obj).
array30([Arg0]) :- object22(Arg0).
object23(Obj) :- !,array28(Obj);value37(Obj);array30(Obj).
positions27(['uast:Positions', Start, _]) :- position28(Start).
object24(Obj) :- !,array23(Obj);value28(Obj);object20(Obj);object21(Obj);object23(Obj);positions27(Obj).
position30(['uast:Position', 5, 4, 62]).
position31(['uast:Position', 7, 4, 64]).
positions28(['uast:Positions', Start, End]) :- position30(Start), position31(End).
array31([Arg0,Arg1]) :- value11(Arg0),value6(Arg1).
object25(Obj) :- !,object17(Obj);value22(Obj);object18(Obj);object24(Obj);positions28(Obj);array31(Obj);value12(Obj).
position32(['uast:Position', 5, 6, 94]).
position33(['uast:Position', 11, 6, 100]).
positions29(['uast:Positions', Start, End]) :- position32(Start), position33(End).
array32([Arg0,Arg1]) :- value18(Arg0),value19(Arg1).
value38('python:Call').
value39('Function').
value40('Call').
value41('Positional').
value42('Argument').
value43('Name').
array33([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value6(Arg0),value26(Arg1),value39(Arg2),value40(Arg3),value41(Arg4),value42(Arg5),value43(Arg6).
value44('python:BinOp').
position34(['uast:Position', 16, 6, 105]).
position35(['uast:Position', 17, 6, 106]).
positions30(['uast:Positions', Start, End]) :- position34(Start), position35(End).
identifier8(['uast:Identifier', 'n', Pos, [Role0]]) :- positions30(Pos),role0(Role0).
array34([Arg0,Arg1,Arg2]) :- value6(Arg0),value26(Arg1),value31(Arg2).
object26(Obj) :- !,identifier8(Obj);value16(Obj);array34(Obj);value17(Obj).
positions31(['uast:Positions', _, _]).
value45('Arithmetic').
value46('Substract').
array35([Arg0,Arg1,Arg2,Arg3]) :- value33(Arg0),value45(Arg1),value46(Arg2),value26(Arg3).
value47('python:Sub').
value48('-').
object27(Obj) :- !,positions31(Obj);array35(Obj);value47(Obj);value48(Obj).
position36(['uast:Position', 20, 6, 109]).
position37(['uast:Position', 21, 6, 110]).
positions32(['uast:Positions', Start, End]) :- position36(Start), position37(End).
array36([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5]) :- value6(Arg0),value7(Arg1),value8(Arg2),value9(Arg3),value26(Arg4),value29(Arg5).
object28(Obj) :- !,positions32(Obj);array36(Obj);value4(Obj);value10(Obj).
positions33(['uast:Positions', Start, _]) :- position34(Start).
object29(Obj) :- !,array33(Obj);value44(Obj);object26(Obj);object27(Obj);object28(Obj);positions33(Obj).
array37([Arg0,Arg1,Arg2,Arg3,Arg4]) :- value39(Arg0),value40(Arg1),value41(Arg2),value42(Arg3),value43(Arg4).
position38(['uast:Position', 23, 6, 112]).
position39(['uast:Position', 24, 6, 113]).
positions34(['uast:Positions', Start, End]) :- position38(Start), position39(End).
identifier9(['uast:Identifier', 'b', Pos, [Role0]]) :- positions34(Pos),role0(Role0).
object30(Obj) :- !,array37(Obj);value17(Obj);identifier9(Obj);value16(Obj).
position40(['uast:Position', 26, 6, 115]).
positions35(['uast:Positions', Start, _]) :- position40(Start).
array38([Arg0,Arg1,Arg2,Arg3,Arg4,Arg5,Arg6]) :- value6(Arg0),value26(Arg1),value39(Arg2),value40(Arg3),value41(Arg4),value42(Arg5),value43(Arg6).
array39([Arg0,Arg1,Arg2]) :- value6(Arg0),value26(Arg1),value31(Arg2).
position41(['uast:Position', 27, 6, 116]).
positions36(['uast:Positions', Start, End]) :- position40(Start), position41(End).
identifier10(['uast:Identifier', 'a', Pos, [Role0]]) :- positions36(Pos),role0(Role0).
object31(Obj) :- !,array39(Obj);value17(Obj);identifier10(Obj);value16(Obj).
positions37(['uast:Positions', _, _]).
value49('Add').
array40([Arg0,Arg1,Arg2,Arg3]) :- value33(Arg0),value45(Arg1),value49(Arg2),value26(Arg3).
value50('python:Add').
value51('+').
object32(Obj) :- !,positions37(Obj);array40(Obj);value50(Obj);value51(Obj).
position42(['uast:Position', 30, 6, 119]).
position43(['uast:Position', 31, 6, 120]).
positions38(['uast:Positions', Start, End]) :- position42(Start), position43(End).
identifier11(['uast:Identifier', 'b', Pos, [Role0]]) :- positions38(Pos),role0(Role0).
array41([Arg0,Arg1,Arg2]) :- value6(Arg0),value26(Arg1),value29(Arg2).
object33(Obj) :- !,value17(Obj);identifier11(Obj);value16(Obj);array41(Obj).
object34(Obj) :- !,positions35(Obj);array38(Obj);value44(Obj);object31(Obj);object32(Obj);object33(Obj).
array42([Arg0,Arg1,Arg2]) :- object29(Arg0),object30(Arg1),object34(Arg2).
value52('Callee').
array43([Arg0,Arg1]) :- value40(Arg0),value52(Arg1).
position44(['uast:Position', 12, 6, 101]).
position45(['uast:Position', 15, 6, 104]).
positions39(['uast:Positions', Start, End]) :- position44(Start), position45(End).
identifier12(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions39(Pos),role0(Role0).
object35(Obj) :- !,array43(Obj);value17(Obj);identifier12(Obj);value16(Obj).
array44([]).
positions40(['uast:Positions', Start, _]) :- position44(Start).
array45([Arg0,Arg1,Arg2]) :- value39(Arg0),value40(Arg1),value6(Arg2).
object36(Obj) :- !,value38(Obj);array42(Obj);object35(Obj);array44(Obj);positions40(Obj);array45(Obj).
object37(Obj) :- !,positions29(Obj);array32(Obj);value14(Obj);value15(Obj);object36(Obj).
block0(['uast:Block', [Stmt0,Stmt1,Stmt2], Pos]) :- positions14(Pos),object14(Stmt0),object25(Stmt1),object37(Stmt2).
positions41(['uast:Positions', _, _]).
function0(['uast:Function', FnType, Body, Pos]) :- function_type0(FnType),block0(Body),positions41(Pos).
positions42(['uast:Positions', _, _]).
identifier13(['uast:Identifier', 'fib', Pos, [Role0]]) :- positions42(Pos),role0(Role0).
alias0(['uast:Alias', Name, Node, Pos]) :- identifier13(Name),function0(Node),positions2(Pos).
function_group0(['uast:FunctionGroup', [Node0,Node1], Pos]) :- positions1(Pos),object1(Node0),alias0(Node1).
array46([Arg0]) :- function_group0(Arg0).
object38(Obj) :- !,positions0(Obj);array0(Obj);value2(Obj);array46(Obj).

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

% function_group([Type, [Nodes], Pos]).
function_group(X) :- function_group0(X).

% block([Type, [Statements], Pos]).
block(X) :- block0(X).

% alias([Type, Name, Node, Pos]).
alias(X) :- alias0(X).

% argument([Type, Name, ArgType, Init, Variadic, MapVariadic, Receiver, Pos]).
argument(X) :- argument0(X);argument1(X);argument2(X);argument3(X).

% function_type([Type, [Arguments], [Returns], Pos]).
function_type(X) :- function_type0(X).

% function([Type, FuncType, Body, Pos]).
function(X) :- function0(X).
```

</p>
</details>

Next, we can query DB to get all identifiers and start positions:
```bash
./query -f fib.py.P -q "identifier([_, Name, [_, Start, _], _])." -v Name -v Start

Name = n
Start = ['uast:Position',16,6,105]

Name = b
Start = ['uast:Position',23,6,112]

Name = a
Start = ['uast:Position',26,6,115]

Name = b
Start = ['uast:Position',30,6,119]

Name = fib
Start = ['uast:Position',12,6,101]
```


_Happy hacking!_
