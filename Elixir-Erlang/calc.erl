-module(calc).
-export([welcome/0, calc/3, sum/2, rest/2, mul/2, divi/2]).

welcome() ->
    io:format("Bienvenido o bienvenida usuario.~n").


calc(OP, X, Y) ->
    case OP of
        1 -> sum(X, Y);
        2 -> rest(X, Y);
        3 -> mul(X, Y);
        4 -> divi(X, Y);
        _ -> io:format("~nEsta no es una operación válida~n")
    end.

sum(X, Y) ->
    RESP = X + Y,
    io:format("~nLa suma de ~p y ~p es igual a ~p.~n", [X, Y, RESP]).

rest(X, Y) ->
    RESP = X - Y,
    io:format("~nLa resta de ~p y ~p es igual a ~p.~n", [X, Y, RESP]).

mul(X, Y) ->
    RESP = X * Y,
    io:format("~nLa multiplicación de ~p y ~p es igual a ~p.~n", [X, Y, RESP]).

divi(X, Y) ->
    RESP = X / Y,
    io:format("~nLa división de ~p y ~p es igual a ~p.~n", [X, Y, RESP]).