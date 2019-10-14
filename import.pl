% join is a private predicate - the same predicate as stdlib's append/3 or merge/3 (from list module).
join_([], List, List).
join_([Head | Tail], List, [Head | NewList]) :- !, join_(Tail, List, NewList).

% extract_name_ is a private predicate - modified version of flatten/2 (from list module).
% It just extracts 'Name' from identifier tuple.
extract_name_([], []) :- !.
extract_name_([['uast:Identifier',Name, _, ['Identifier']] | TailList], [Name | List]) :- !, extract_name_(TailList, List).
extract_name_([Head | Tail], List) :- !, extract_name_(Head, HeadList), extract_name_(Tail, TailList),  join_(HeadList, TailList, List).
extract_name_(['uast:Identifier',Name,_,['Identifier']], [Name]) :- !.
extract_name_(_, []) :- !.


% import_path extracts 'Name' tokens for each import.
% It returns Path as a list of names.
import_path(Path) :- import(Import), extract_name_(Import, Path).
import_path(Path) :- runtime_import(Import), extract_name_(Import, Path).
import_path(Path) :- runtime_reimport(Import), extract_name_(Import, Path).
import_path(Path) :- inline_import(Import), extract_name_(Import, Path).
