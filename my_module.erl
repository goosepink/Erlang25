% Definición del módulo `my_module`.
-module(my_module).

% Exportamos las funciones `fun1/2`, `fun2/2`, `something/0`, `now/3`, `and_fun/3`, y `moving/0`.
-export([fun1/2, fun2/2, something/0, now/3, and_fun/3, moving/0]).

%% Implementación de `fun1/2` que llama a `something/0` y luego a `fun2/2`.
fun1(A, B) ->
    something(),
    fun2(B, A).

%% Implementación de `fun2/2` que llama a `now/3`, `and_fun/3`, y `moving/0`.
fun2(A, B) ->
    now(A, is, B),
    and_fun(B, is, A),
    moving().

%% Implementación de `something/0` que imprime un mensaje.
something() ->
    io:format("Doing something~n").

%% Implementación de `now/3` que imprime el valor de los parámetros.
now(A, is, B) ->
    io:format("Now: ~p is ~p~n", [A, B]).

%% Implementación de `and_fun/3` que imprime el valor de los parámetros.
and_fun(A, is, B) ->
    io:format("And: ~p is ~p~n", [A, B]).

%% Implementación de `moving/0` que imprime un mensaje de acción.
moving() ->
    io:format("Moving on~n").
