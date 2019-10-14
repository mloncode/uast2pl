% join is the same predicate as stdlib's append/3 or merge/3 (from list module).
join([], List, List).
join([Head | Tail], List, [Head | NewList]) :- !, join(Tail, List, NewList).

% extract_name predicate is modified version of flatten/2 (from list module).
% It just extracts 'Name' from identifier tuple.
extract_name([], []) :- !.
extract_name([['uast:Identifier',Name, _, ['Identifier']] | TailList], [Name | List]) :- !, extract_name(TailList, List).
extract_name([Head | Tail], List) :- !, extract_name(Head, HeadList), extract_name(Tail, TailList),  join(HeadList, TailList, List).
extract_name(['uast:Identifier',Name,_,['Identifier']], [Name]) :- !.
extract_name(_, []) :- !.


% import_path extracts 'Name' tokens for each import.
% It returns a Path as list of names.
import_path(Path) :- !, import(Import), extract_name(Import, Path).
