:- use_module(library(lists)).

% extract_id_name_ is a private predicate - modified version of flatten/2 (from list module).
% It just extracts 'Name' from identifier tuple.
extract_id_name_([], []).
extract_id_name_([['uast:Identifier', Name, _, ['Identifier']] | TailList], [Name | List]) :- \+ var(Name), extract_id_name_(TailList, List), !.
extract_id_name_([Head | Tail], List) :- extract_id_name_(Head, HeadList), extract_id_name_(Tail, TailList), append(HeadList, TailList, List), !.
extract_id_name_(_, []).


% import_path extracts 'Name' tokens for each import.
% It returns Path as a list of names.
import_path(Path) :- import(Import), extract_id_name_(Import, Path).
import_path(Path) :- runtime_import(Import), extract_id_name_(Import, Path).
import_path(Path) :- runtime_reimport(Import), extract_id_name_(Import, Path).
import_path(Path) :- inline_import(Import), extract_id_name_(Import, Path).
