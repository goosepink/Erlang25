
% Definición del módulo para imprimir una lista de elementos con sus índices.
-module(indexitems).

% Exportamos la función `print_with_index/1` para hacerla accesible desde otros módulos.
-export([print_with_index/1]).

% Definición de la función `print_with_index/1`, que toma una lista de elementos,
% empareja cada elemento con su índice utilizando `lists:zip/2`, y luego imprime 
% la lista con índices usando `io:format/2`.
print_with_index(Items) ->
    % Emparejamos los índices con los elementos de la lista.
    WithIndex = lists:zip(lists:seq(1, length(Items)), Items),
    
    % Imprimimos la lista con índices en formato legible.
    io:format("~p~n", [WithIndex]).