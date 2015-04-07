mymerge([], Y, Y).
mymerge(X, [], X).
mymerge([A|B], [C|D], [A|F]) :- mymerge(B, [C|D], F), <(A,C).
mymerge([A|B], [C|D], [C|F]) :- mymerge([A|B], D, F), >=(A,C).

mylen([], 0).
mylen([H|T], Y) :- mylen(T, X), Y is X+1, number(H).
mylen([H|T], C) :- mylen(H, A), mylen(T, B), C = A+B.

myflatten([], []).
myflatten([H|T], Y) :- myflatten(T, X), append([H], X, Y), number(H).
myflatten([H|T], C) :- myflatten(H, A), myflatten(T, B), append(A, B, C).

mymember(X, [X|_]).
mymember(X, [_|Y]) :- mymember(X, Y).
mysubset([A|X], Y) :- mymember(A, Y), mysubset(X, Y).
mysubset([], Y).

myunion([], Y, Y).
myunion(X, [], X).
myunion([H|T], A, B) :- mymember(H, A), myunion(T, A, B).
myunion([H|T], A, C) :- append([H], D, C), myunion(T, A, D).

myintersection([], Y, []).
myintersection(X, [], []).
myintersection([H|T], A, B) :- mymember(H, A), append([H], C, B), myintersection(T, A, C).
myintersection([H|T], A, D) :- myintersection(T, A, D).

mysetdiff([], Y, []).
mysetdiff(X, [], X).
mysetdiff([H|T], A, B) :- mymember(H, A), mysetdiff(T, A, B).
mysetdiff([H|T], A, C) :- append([H], D, C), mysetdiff(T, A, D).