% Definición del módulo para iterar sobre un mapa e imprimir sus claves y valores.
-module(iterar_mapa).

% Exportamos la función `main/1` para que pueda ser llamada cuando se ejecuta el script.
-export([main/1]).

% La función `main/1` es el punto de entrada cuando se ejecuta el script con `escript`.
main(_Args) ->
    % Define un mapa de ejemplo con claves y valores variados.
    Mapa = #{nombre => "Juan", edad => 30, ciudad => "Madrid"},
    
    % Llama a la función `imprimir_mapa/1` que recorre el mapa e imprime sus pares clave-valor.
    imprimir_mapa(Mapa).

% Definición de la función `imprimir_mapa/1`, que imprime cada clave y valor del mapa.
imprimir_mapa(Mapa) ->
    maps:fold(
        fun(K, V, ok) ->
            % Imprime la clave y el valor en formato legible.
            io:format("~p: ~p~n", [K, V]),
            ok
        end, 
        ok, 
        Mapa).