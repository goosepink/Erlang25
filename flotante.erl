% Definición del módulo `format_example` para formatear números de punto flotante.
-module(flotante).

% Exportamos la función `format_float/1`.
-export([format_float/1]).

%% Convierte un número de punto flotante a una lista de caracteres con dos decimales.
format_float(X) ->
    % Utiliza `io_lib:format/2` para formatear el número con dos decimales.
    io_lib:format("~.2f", [X]).