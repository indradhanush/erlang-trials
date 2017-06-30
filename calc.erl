-module(calc).
-compile(export_all).

%% rpn(L) when is_list(L) ->
%%     [Res] = lists:foldl(fun rpn/2, [], string:tokens(L, " ")),
%%     Res.

read(N) ->
    case string:to_float(N) of
        {error, not_a_list} -> {error, not_a_list};
        {error, no_float} ->
            {ok, list_to_integer(N)};
        {F, _} -> {ok, F}

    end.



