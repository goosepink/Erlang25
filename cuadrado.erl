% Definición del módulo para calcular el cuadrado de un número.
-module(cuadrado).

% Exportamos las funciones `square/1` y `main/1`.
-export([square/1, main/1]).

% Especificación del tipo de la función `square/1`.
-spec square(integer()) -> integer().

% Definición de la función `square/1`, que calcula el cuadrado de un número entero.
square(X) when is_integer(X) -> X * X.

% Especificación del tipo de la función `main/1`, que recibe una lista de cadenas.
-spec main([string()]) -> ok.

% La función `main/1` es el punto de entrada cuando se ejecuta el script con `escript`.
main(Args) ->
    case Args of
        [NumberStr] ->
            % Intentar convertir la cadena a un entero.
            case string:to_integer(NumberStr) of
                {ok, Number} ->
                    % Calcular el cuadrado del número.
                    Result = square(Number),
                    io:format("El cuadrado de ~p es ~p~n", [Number, Result]),
                    ok;
                _ ->
                    io:format("Por favor, proporciona un número entero válido.~n"),
                    ok
            end;
        _ ->
            io:format("Por favor, proporciona exactamente un argumento.~n"),
            ok
    end.