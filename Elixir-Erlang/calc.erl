-module(calc).
-export([welcome/0, calc/1, calcu/3]).

welcome() ->
    io:format("Bienvenido o bienvenida usuario.~n").

calc(OP) ->
    case OP of
        1 -> 'suma';
        2 -> 'resta';
        3 -> 'multiplicación';
        4 -> 'división';
        _ -> io:format("~nEsta no es una operación valida.~n")
    end.

calcu(OP, X, Y) ->
    case OP of
        'suma' -> sum(X, Y);
        'resta' -> res(X, Y);
        'multiplicación' -> mul(X, Y);
        'división' -> divi(X, Y);
    end.

sum(X, Y) ->
    RESP = X + Y,
    io:format("~nLa suma de ~p y ~p es igual a ~p.~n", X, Y, RESP).

res(X, Y) ->
    RESP = X - Y,
    io:format("~nLa resta de ~p y ~p es igual a ~p.~n", X, Y, RESP).

mul(X, Y) ->
    RESP = X * Y,
    io:format("~nLa multiplicación de ~p y ~p es igual a ~p.~n", X, Y, RESP).

divi(X, Y) ->
    RESP = X / Y,
    io:format("~nLa división de ~p y ~p es igual a ~p.~n", X, Y, RESP).