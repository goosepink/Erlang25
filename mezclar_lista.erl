% Definición del módulo `mezclar_lista`.
-module(mezclar_lista).

% Exportamos la función `mezclar_lista/1`.
-export([mezclar_lista/1]).

%% Mezcla los elementos de una lista de enteros en un orden aleatorio.
-spec mezclar_lista(list(integer())) -> list(integer()).
mezclar_lista(X) ->
    % Asigna un valor aleatorio a cada elemento de la lista, luego ordena la lista 
    % por estos valores aleatorios y extrae los elementos.
    [Y || {_, Y} <- lists:sort([ {rand:uniform(), N} || N <- X])].