% Definición del módulo `generar_aleatorio`.
-module(generar_aleatorio).

% Exportamos la función `generar/2`.
-export([generar/2]).

%% Genera un número entero aleatorio entre A y B (ambos inclusive).
-spec generar(integer(), integer()) -> integer().
generar(A, B) ->
    % Utiliza `crypto:rand_uniform/2` para generar un número aleatorio en el rango dado.
    crypto:rand_uniform(A, B).