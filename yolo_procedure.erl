% Definición del módulo para imprimir el mensaje "#YOLO!" en la consola.
-module(yolo_procedure).

% Exportamos la función `procedure/0` para que pueda ser llamada externamente.
-export([procedure/0]).

% Especificación del tipo de la función `procedure/0`.
-spec procedure() -> ok.

% Definición de la función `procedure/0`, que imprime "#YOLO!" en la consola.
procedure() -> 
    io:format("#YOLO!~n").