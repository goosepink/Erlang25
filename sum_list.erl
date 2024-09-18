
% Definición del módulo para sumar los elementos de una lista.
-module(sum_list).

% Exportamos la función `sum_items/1` para que sea accesible desde otros módulos.
-export([sum_items/1]).

% Especificación de la función `sum_items/1`, que toma una lista de números
% y devuelve la suma de sus elementos.
-spec sum_items(list(number())) -> number().
sum_items(Items) ->
    % Utilizamos una comprensión de listas para iterar sobre la lista y sumar
    % todos los elementos utilizando `lists:sum/1`.
    lists:sum([X || X <- Items]).