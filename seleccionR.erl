% Definición del módulo `unicode_example`.
-module(seleccionR).

% Exportamos la función `pick_random/1`.
-export([pick_random/1]).

%% Selecciona un elemento aleatorio de una lista no vacía.
-spec pick_random(list()) -> any().
pick_random(List) when is_list(List), length(List) > 0 ->
    % Usa `rand:uniform/1` para generar un índice aleatorio dentro del rango de la lista,
    % y luego usa `lists:nth/2` para recuperar el elemento en ese índice.
    lists:nth(rand:uniform(length(List)), List).