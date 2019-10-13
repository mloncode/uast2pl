merge([], L, L).
merge([H | T], L, [H | LL]) :- !, merge(T, L, LL).

flatten([], []) :- !.
flatten([H | T], L) :- !, flatten(H, HL), flatten(T, TL), merge(HL, TL, L).
flatten(L, [L]) :- !.
