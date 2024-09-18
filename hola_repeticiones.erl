% Definición del módulo para imprimir "Hello" diez veces en la consola.
-module(hola_repeticiones).

% Exportamos la función `main/1` para que pueda ser llamada cuando se ejecuta el script.
-export([main/1]).

% La función `main/1` es el punto de entrada cuando se ejecuta el script con `escript`.
main(_) ->
    % Utiliza `lists:foreach/2` para iterar diez veces y imprimir "Hello".
    lists:foreach(
        fun(_) ->
            io:format("Hello~n")
        end, 
        lists:seq(1, 10)
    ).