% Definición del módulo `example` para convertir listas de caracteres en enteros.
-module(example).

% Exportamos la función `convert_list_to_integer/1`.
-export([convert_list_to_integer/1]).

%% Convierte una lista de caracteres a un entero.
convert_list_to_integer(S) ->
    % Utiliza `list_to_integer/1` para convertir la lista de caracteres a entero.
    I = list_to_integer(S),
    % Devuelve el entero resultante.
    I.