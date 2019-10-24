% merge is the same predicate as stdlib's append/3
merge([], List, List).
merge([Head | Tail], List, [Head | NewList]) :- !, merge(Tail, List, NewList).

% flatten is true if FlatList is a non-nested version of NestedList.
flatten([Head | Tail], FlatList) :- !, flatten(Head, HeadFlatList), flatten(Tail, TailFlatList), merge(HeadFlatList, TailFlatList, FlatList).
flatten(Elem, [Elem]) :- !.
flatten([], []) :- !.

% reverse succeeds if Rev is the reversed list List.
reverse(List, Rev) :- reverse(List, Rev, []).
reverse([], List, List) :- !.
reverse([Head | Tail], List, Stack) :- reverse(Tail, List, [Head | Stack]).