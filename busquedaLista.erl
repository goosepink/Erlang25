% Definición del módulo `unicode_example`.
-module(busquedaLista).

% Exportamos la función `contains/2`.
-export([contains/2]).

%% Verifica si un valor está presente en una lista.
-spec contains(any(), list(any())) -> boolean().
contains(Value, List) ->
    % Usa `lists:member/2` para comprobar si el valor está en la lista.
    lists:member(Value, List).