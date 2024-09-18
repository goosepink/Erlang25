% Definición del módulo `lista_reversa`.
-module(lista_reversa).

% Exportamos la función `reversa/1`.
-export([reversa/1]).

%% Invierte el orden de los elementos en una lista.
-spec reversa(list()) -> list().
reversa(List) ->
    % Utiliza `lists:reverse/1` para invertir el orden de los elementos en la lista.
    lists:reverse(List).