% Definición del módulo `unicode_example`.
-module(random).

% Exportamos la función `random_float/2`.
-export([random_float/2]).

%% Genera un número flotante aleatorio en el rango [A, B).
random_float(A, B) when A < B ->
    % Utiliza `rand:uniform/0` para obtener un número aleatorio entre 0 y 1,
    % luego ajusta el valor al rango [A, B).
    A + (B - A) * rand:uniform().