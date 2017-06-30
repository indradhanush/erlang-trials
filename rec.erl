-module(rec).
-compile(export_all).

fac(0) ->
    1;
fac(1) ->
    1;
fac(N) ->
    N * fac(N-1).

tfac(N) ->
    tfac(N, 1).    
tfac(0, Result) ->
    Result;
tfac(N, Result) when N > 0 ->
    tfac(N-1, N*Result).

len([]) ->
    0;
len([_|T]) ->
    1 + len(T).

tlen(L) ->
    tlen(L, 0).
tlen([], Result) ->
    Result;
tlen([_|T], Result) ->
    tlen(T, Result+1).


rev([]) ->
    [];
rev([H|T]) ->
    rev(T) ++ [H].

trev(L) ->
    trev(L, []).
trev([], Result) ->
    Result;
trev([H|T], Result) ->
    trev(T, [H|Result]).

sublist([], _) ->
    [];
sublist(_, 0) ->
    [];
sublist([H|T], N) when N > 0 ->
    [H|sublist(T, N-1)].

tsublist(L, N) ->
    trev(tsublist(L, N, [])).
tsublist(_, 0, Result) ->
    Result;
tsublist([], _, Result) ->
    Result;
tsublist([H|T], N, Result) ->
    tsublist(T, N-1, [H|Result]).

zip(_, []) ->
    [];
zip([], _) ->
    [];
zip([H1|T1], [H2|T2]) ->
    [{H1, H2}|zip(T1, T2)].

tzip(L1, L2) ->
    tzip(L1, L2, []).
tzip([], [], Result) ->
    trev(Result);
tzip([H1|T1], [H2|T2], Result) ->
    tzip(T1, T2, [{H1, H2}|Result]).

lzip(L1, L2) ->
    trev(lzip(L1, L2, [])).

lzip([], _, Result) ->
    Result;
lzip(_, [], Result) ->
    Result;
lzip([H1|T1], [H2|T2], Result) ->
    lzip(T1, T2, [{H1, H2}|Result]).

qsort([]) ->
    [];
qsort([Pivot|T]) ->
    qsort([Smaller || Smaller <- T, Smaller =< Pivot])
    ++ [Pivot] ++
    qsort([Larger || Larger <- T, Larger > Pivot]).


increment([]) ->
    [];
increment([H|T]) ->
    [H+1|increment(T)].

decrement([]) ->
    [];
decrement([H|T]) ->
    [H-1|decrement(T)].


map(_, []) ->
    [];
map(F, [H|T]) ->
    [F(H)|map(F, T)].

incr(X) ->
    X + 1.

decr(X) ->
    X - 1.
