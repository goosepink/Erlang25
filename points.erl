% Definición del módulo para manejar puntos en un plano cartesiano.
-module(points).

% Exportamos las funciones `new/2`, `x/1`, y `y/1` para permitir la creación de
% puntos y la obtención de sus coordenadas.
-export([new/2, x/1, y/1]).

% Definición opaca del tipo `point/0`, el cual es un mapa que contiene dos claves: `x` y `y`.
-opaque point() :: #{x => float(), y => float()}.

% Exportamos el tipo `point/0` para que pueda ser utilizado externamente.
-export_type([point/0]).

% Especificación de la función `new/2` para crear un nuevo punto.
% Recibe dos números en coma flotante que representan las coordenadas X e Y
% y retorna un nuevo punto como un mapa.
-spec new(float(), float()) -> point().
new(X, Y) -> #{x => X, y => Y}.

% Especificación de la función `x/1` para obtener la coordenada X de un punto.
% Recibe un punto y devuelve un número en coma flotante.
-spec x(point()) -> float().
x(#{x := X}) -> X.

% Especificación de la función `y/1` para obtener la coordenada Y de un punto.
% Recibe un punto y devuelve un número en coma flotante.
-spec y(point()) -> float().
y(#{y := Y}) -> Y.