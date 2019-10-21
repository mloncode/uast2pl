% join_ is a private predicate - the same predicate as stdlib's append/3 or merge/3 (from list module).
join_([], List, List).
join_([Head | Tail], List, [Head | NewList]) :- !, join_(Tail, List, NewList).

% extract_name_ is a private predicate - modified version of flatten/2 (from list module).
% It just extracts 'Name' from identifier tuple for a given Type.
extract_name_(_, [], []) :- !.
extract_name_(Type, [Type, ['uast:Identifier', Name, _, ['Identifier']], _ | TailList], [Name | List]) :- \+ var(Name), extract_name_(Type, TailList, List), !.
extract_name_(Type, [Head | Tail], List) :- extract_name_(Type, Head, HeadList), extract_name_(Type, Tail, TailList), join_(HeadList, TailList, List), !.
extract_name_(_, _, []) :- !.

% extract_fntype_arg_ is a private predicate
% It just extracts function arguments.
extract_fntype_arg_([], []) :- !.
extract_fntype_arg_([['uast:FunctionType', Args, _, _] | TailList], AllArgs) :- \+ var(Args), extract_fntype_arg_(TailList, List), join_(Args, List, AllArgs), !.
extract_fntype_arg_([Head | Tail], List) :- extract_fntype_arg_(Head, HeadList), extract_fntype_arg_(Tail, TailList), join_(HeadList, TailList, List), !.
extract_fntype_arg_(_, []):- !.

extract_fn_name_(FnGroup, Name) :- extract_name_('uast:Alias', FnGroup, Name).
extract_fn_args_(FnGroup, Args) :- extract_fntype_arg_(FnGroup, FnArgs), extract_name_('uast:Argument', FnArgs, Args).


% function_arg extracts function name and function arguments for each function_group.
% It returns Fn as a atomic value and Args as a list of names.
function_arg(Fn, Args) :- function_group(FnGroup), extract_fn_name_(FnGroup, [Fn]), extract_fn_args_(FnGroup, Args).
