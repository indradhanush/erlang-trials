-module(functions).
-compile(export_all).  %% Bad idea for production code. Good for quick testing.

head([H|_]) ->
    H.

second([_, X|_]) ->
    X.

third([_, _, X|_]) ->
    X.

tail([_|X]) ->
    X.

%% indexed(X, Index) ->
%%     X[Index].

same(X, X) ->
    true;
same(_, _) ->
    false.

valid_time({{Y, M, D}, {H, Min, S}}) ->
    {{Y, M, D}, {H, Min, S}};
valid_time(_) ->
    io:format("incorrect").
