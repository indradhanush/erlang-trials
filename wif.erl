-module(wif).
-compile(export_all).

heh() ->
    if 1 =:= 1 -> works
    end.
    
test(N) ->
    if N =:= 2 -> even;
       N =:= 3 -> odd;
       true -> outside_range
    end.

covered(N) ->
    if N > 10 ->
            greater;
       N < 10 ->
            lesser;
       N == 10 ->
            equal
    end.
    
    
    
                

