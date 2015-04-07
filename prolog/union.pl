len([], 0).
len([_|T], L) :- len(T, N), L is N+1.

reverse([], []).
reverse([H|T], R) :- reverse(T, L), append(L, [H], R).

member(Element, [Element | _]).
member(Element, [_ | List]) :- member(Element, List).

%% 아래 u1, u2, u3, u4는 교집합이 공집합이면 true, 아니면 false를 구현하고자 한 것이다.
%% u2, u3는 잘 구현되었는데 u1, u4는 잘못 구현되었다.
%% u1, u4에 어떤 오류가 있는가?
u1([], X).
u1([X|Y], Z) :- not member(X, Z), u1(Y, Z).

u2([], X).
u2([X|_], Z) :- member(X, Z), !, fail.
u2([X|Y], Z) :- u2(Y, Z).

nonmember(Element, []).
nonmember(Element, [Element | _]) :- !, fail.
nonmember(Element, [_ | List]) :- nonmember(Element, List).

u3([], X).
u3([X|Y], Z) :- nonmember(X, Z), u3(Y, Z).

notmember(X, Y) :- member(X, Y), !, fail.

u4([], X).
u4([X|Y], Z) :- notmember(X, Z), u4(Y, Z).
