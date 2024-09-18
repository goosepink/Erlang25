% Definición del módulo para crear y acceder a valores en un mapa.
-module(mapas).

% Exportamos las funciones `create_map/0` y `access_values/1` para hacerlas accesibles desde otros módulos.
-export([create_map/0, access_values/1]).

% Definición de la función `create_map/0`, que crea un mapa con claves y valores de diferentes tipos.
create_map() ->
    #{one => 1, "two" => 2.0, <<"three">> => [i, i, i]}.

% Definición de la función `access_values/1`, que accede a los valores del mapa
% utilizando las claves y luego imprime los valores obtenidos.
access_values(Map) ->
    % Obtención de los valores del mapa utilizando `maps:get/2`.
    One = maps:get(one, Map),
    Two = maps:get("two", Map),
    Three = maps:get(<<"three">>, Map),
    
    % Impresión de los valores obtenidos.
    io:format("Value of 'one': ~p~n", [One]),
    io:format("Value of 'two': ~p~n", [Two]),
    io:format("Value of 'three': ~p~n", [Three]).