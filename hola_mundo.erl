% Definición del módulo para imprimir un mensaje de "Hello, world!" en la consola.
-module(hola_mundo).

% Exportamos la función `main/1` para que pueda ser llamada cuando se ejecuta el script.
-export([main/1]).

% La función `main/1` es el punto de entrada cuando se ejecuta el script con `escript`.
main(_) ->
    % Imprime el mensaje "Hello, world!" en la consola.
    io:format("~s~n", ["Hello, world!"]).