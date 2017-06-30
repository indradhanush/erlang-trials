-module(useless).

-export([add/2, add/3]). %% , add_macro/0]).
-export([hw/0]).
-export([greet/2]).

-define(TEST_MACRO, [1, 2]).


add(A, B) ->
    A + B.


add(A, B, C) ->
    A + B + C.

%% add_macro() ->
%%     X = 1 + 2.
%%     X + 3.


%% A comment
hw() ->
    io:format("Hello, World!~n").


greet(male, Name) ->
    io:format("Hello, Mr. ~s!~n Bye!", [Name]);
greet(female, Name) ->
    io:format("Hello, Mrs. ~s!~n Ok, Bye!", [Name]);
greet(_, Name) ->
    io:format("Hello, ~s!", [Name]).
