# links
[![asciicast](https://asciinema.org/a/zLf6XVX1BKoG2lnGqetVdPx9D.svg)](https://asciinema.org/a/zLf6XVX1BKoG2lnGqetVdPx9D)
# Ejercicio 1
```Erlang
%------------------------------------------------------------------------------
% Módulo:       hola_mundo
% Propósito:    Imprimir un mensaje de "Hello, world!" en la consola.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función principal `main/1` que actúa como punto de entrada 
% cuando se ejecuta el script con `escript`. La función `main/1` imprime el mensaje 
% "Hello, world!" en la consola.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Guardar el módulo en un archivo, por ejemplo `hola_mundo.erl`.
% 2. Ejecutar el script con escript:
%    escript hola_mundo.erl
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función `main/1` para imprimir un mensaje.
%
% Notas:
% Este módulo es un ejemplo básico para demostrar la impresión de un mensaje en Erlang.
%------------------------------------------------------------------------------

% Definición del módulo para imprimir un mensaje de "Hello, world!" en la consola.
-module(hola_mundo).

% Exportamos la función `main/1` para que pueda ser llamada cuando se ejecuta el script.
-export([main/1]).

% La función `main/1` es el punto de entrada cuando se ejecuta el script con `escript`.
main(_) ->
    % Imprime el mensaje "Hello, world!" en la consola.
    io:format("~s~n", ["Hello, world!"]).

```
# Ejercicio 2
```Erlang
%------------------------------------------------------------------------------
% Módulo:       hola_repeticiones
% Propósito:    Imprimir el mensaje "Hello" diez veces en la consola.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función principal `main/1` que imprime el mensaje "Hello" 
% diez veces en la consola. La función utiliza `lists:foreach/2` para iterar diez 
% veces sobre una secuencia generada por `lists:seq/2`.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Guardar el módulo en un archivo, por ejemplo `hola_repeticiones.erl`.
% 2. Ejecutar el script con escript:
%    escript hola_repeticiones.erl
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función `main/1` para imprimir el mensaje 
%                     "Hello" varias veces.
%
% Notas:
% Este módulo es un ejemplo básico que utiliza funciones de listas para realizar 
% una repetición de tareas en Erlang.
%------------------------------------------------------------------------------

% Definición del módulo para imprimir "Hello" diez veces en la consola.
-module(hola_repeticiones).

% Exportamos la función `main/1` para que pueda ser llamada cuando se ejecuta el script.
-export([main/1]).

% La función `main/1` es el punto de entrada cuando se ejecuta el script con `escript`.
main(_) ->
    % Utiliza `lists:foreach/2` para iterar diez veces y imprimir "Hello".
    lists:foreach(
        fun(_) ->
            io:format("Hello~n")
        end, 
        lists:seq(1, 10)
    ).

```
# Ejercicio 3
```Erlang
%------------------------------------------------------------------------------
% Módulo:       yolo_procedure
% Propósito:    Imprimir el mensaje "#YOLO!" en la consola.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `procedure/0` que imprime el mensaje "#YOLO!" 
% en la consola. Es un ejemplo simple de cómo usar la función `io:format/1` para 
% imprimir mensajes en Erlang.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Compilar el módulo:
%    c(yolo_procedure).
% 2. Llamar a la función:
%    yolo_procedure:procedure().
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función `procedure/0` para imprimir un mensaje.
%
% Notas:
% Este es un ejemplo básico que muestra el uso de la entrada/salida en Erlang para
% imprimir texto en la consola.
%------------------------------------------------------------------------------

% Definición del módulo para imprimir el mensaje "#YOLO!" en la consola.
-module(yolo_procedure).

% Exportamos la función `procedure/0` para que pueda ser llamada externamente.
-export([procedure/0]).

% Especificación del tipo de la función `procedure/0`.
-spec procedure() -> ok.

% Definición de la función `procedure/0`, que imprime "#YOLO!" en la consola.
procedure() -> 
    io:format("#YOLO!~n").

```
# Ejercicio 4
```Erlang
%------------------------------------------------------------------------------
% Módulo:       cuadrado
% Propósito:    Calcular el cuadrado de un número entero proporcionado como argumento.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define dos funciones principales: `square/1` que calcula el cuadrado 
% de un número entero y `main/1` que actúa como punto de entrada cuando se ejecuta 
% el script con `escript`. La función `main/1` convierte el argumento de entrada en un 
% número entero, calcula su cuadrado e imprime el resultado.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Guardar el módulo en un archivo, por ejemplo `cuadrado.erl`.
% 2. Ejecutar el script con escript proporcionando un número entero como argumento:
%    escript cuadrado.erl 5
%    cuadrado:square(9).   
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para calcular e imprimir el cuadrado de un número.
%
% Notas:
% Este módulo convierte el argumento de entrada a un número entero. Si no se proporciona un 
% número válido o la cantidad de argumentos es incorrecta, se imprime un mensaje de error.
%------------------------------------------------------------------------------

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

```
# Ejercicio 5
```Erlang
%------------------------------------------------------------------------------
% Módulo:       points
% Propósito:    Crear y manipular puntos en un plano cartesiano.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una abstracción de puntos en un plano cartesiano utilizando 
% mapas en Erlang. Permite crear nuevos puntos y acceder a sus coordenadas X e Y.
% El tipo `point/0` es definido como un mapa opaco, garantizando encapsulamiento.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Compilar el módulo:
%    c(points).
% 2. Crear un nuevo punto y acceder a sus coordenadas:
%    P = points:new(3.0, 4.0).
%    X = points:x(P).
%    Y = points:y(P).
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para crear puntos y acceder 
%                     a las coordenadas X e Y.
%
% Notas:
% Este módulo utiliza tipos especificados con `-spec` para mejorar la legibilidad 
% y el análisis estático del código.
%------------------------------------------------------------------------------

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
```
# Ejercicio 6
```Erlang
%------------------------------------------------------------------------------
% Módulo:       sum_list
% Propósito:    Sumar los elementos de una lista.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que toma una lista de números y calcula su suma 
% utilizando una comprensión de listas y la función `lists:sum/1` de Erlang.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Compilar el módulo:
%    c(sum_list).
% 2. Sumar los elementos de una lista de números:
%    sum_list:sum_items([1, 2, 3, 4, 5]).
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función `sum_items/1` para sumar 
%                     los elementos de una lista.
%
% Notas:
% Este módulo no incluye manejo de errores para listas vacías o elementos que no 
% sean números.
%------------------------------------------------------------------------------

% Definición del módulo para sumar los elementos de una lista.
-module(sum_list).

% Exportamos la función `sum_items/1` para que sea accesible desde otros módulos.
-export([sum_items/1]).

% Especificación de la función `sum_items/1`, que toma una lista de números
% y devuelve la suma de sus elementos.
-spec sum_items(list(number())) -> number().
sum_items(Items) ->
    % Utilizamos una comprensión de listas para iterar sobre la lista y sumar
    % todos los elementos utilizando `lists:sum/1`.
    lists:sum([X || X <- Items]).

```
# Ejercicio 7
```Erlang
%------------------------------------------------------------------------------
% Módulo:       indexitems
% Propósito:    Imprimir una lista de elementos junto con sus índices.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función que toma una lista de elementos y los imprime 
% junto con sus índices, comenzando desde 1. Utiliza la función `lists:zip/2` para 
% emparejar los elementos con sus índices y `io:format/2` para imprimir el resultado.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Compilar el módulo:
%    c(indexitems).
% 2. Imprimir los elementos de una lista junto con sus índices:
%    indexitems:print_with_index([apple, banana, cherry]).
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función `print_with_index/1` para 
%                     imprimir una lista con índices.
%
% Notas:
% Este módulo es útil para visualizar los elementos de una lista con sus posiciones 
% de manera clara. No incluye manejo de listas vacías o elementos no imprimibles.
%------------------------------------------------------------------------------

% Definición del módulo para imprimir una lista de elementos con sus índices.
-module(indexitems).

% Exportamos la función `print_with_index/1` para hacerla accesible desde otros módulos.
-export([print_with_index/1]).

% Definición de la función `print_with_index/1`, que toma una lista de elementos,
% empareja cada elemento con su índice utilizando `lists:zip/2`, y luego imprime 
% la lista con índices usando `io:format/2`.
print_with_index(Items) ->
    % Emparejamos los índices con los elementos de la lista.
    WithIndex = lists:zip(lists:seq(1, length(Items)), Items),
    
    % Imprimimos la lista con índices en formato legible.
    io:format("~p~n", [WithIndex]).

```
# Ejercicio 8
```Erlang
%------------------------------------------------------------------------------
% Módulo:       mapas
% Propósito:    Crear y acceder a valores en un mapa.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define dos funciones:
% 1. `create_map/0` para crear un mapa con diferentes tipos de claves y valores.
% 2. `access_values/1` para acceder a los valores del mapa utilizando claves específicas.
% La función `access_values/1` también imprime los valores obtenidos.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Compilar el módulo:
%    c(mapas).
% 2. Crear un mapa y acceder a sus valores:
%    M = mapas:create_map().
%    mapas:access_values(M).
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para crear un mapa y acceder 
%                     a sus valores.
%
% Notas:
% El mapa contiene claves de diferentes tipos (atom, binary, string) y valores de 
% diferentes tipos (integer, float, list).
%------------------------------------------------------------------------------

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

```
# Ejercicio 9
```Erlang
%------------------------------------------------------------------------------
% Módulo:       arbolBinario
% Propósito:    Crear y imprimir un árbol binario.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define dos funciones para manejar un árbol binario:
% 1. `create_tree/0` para crear un árbol binario simple con valores de ejemplo.
% 2. `print_tree/1` para imprimir el árbol en la consola con una representación 
%    visual jerárquica.
% 
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Compilar el módulo:
%    c(arbolBinario).
% 2. Crear un árbol y imprimirlo:
%    T = arbolBinario:create_tree().
%    arbolBinario:print_tree(T).
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para crear e imprimir un árbol 
%                     binario.
%
% Notas:
% El árbol binario se representa como un mapa con claves `data`, `left` y `right`, 
% donde `left` y `right` son nodos hijos, que pueden ser árboles binarios o nodos 
% vacíos.
%------------------------------------------------------------------------------

% Definición del módulo para crear e imprimir un árbol binario.
-module(arbolBinario).

% Exportamos las funciones `create_tree/0` y `print_tree/1` para hacerlas accesibles desde otros módulos.
-export([create_tree/0, print_tree/1]).

% Definición del tipo `binary_tree/1`, que representa un árbol binario con datos genéricos.
-type binary_tree(T) ::
    #{ data => T
     , left => binary_tree(T)
     , right => binary_tree(T)
     }.

% Definición de la función `create_tree/0`, que crea un árbol binario simple de ejemplo.
create_tree() ->
    % Ejemplo de árbol binario:
    %       5
    %      / \
    %     3   8
    %    / \
    %   1   4
    Tree = #{
        data => 5,
        left => #{
            data => 3,
            left => #{
                data => 1,
                left => #{},  % Nodo vacío
                right => #{}
            },
            right => #{
                data => 4,
                left => #{},  % Nodo vacío
                right => #{}
            }
        },
        right => #{
            data => 8,
            left => #{},  % Nodo vacío
            right => #{}
        }
    },
    Tree.

% Definición de la función `print_tree/1`, que imprime el árbol binario en la consola.
print_tree(Tree) ->
    print_tree(Tree, 0).

% Función auxiliar para imprimir el árbol con indentación.
% Imprime el nodo derecho, luego el nodo actual, y finalmente el nodo izquierdo.
print_tree(#{data := Data, left := Left, right := Right}, Indent) ->
    print_tree(Right, Indent + 4),
    io:format("~*p~n", [Indent, Data]),
    print_tree(Left, Indent + 4);
print_tree(#{}, _) ->
    ok.

```
# Ejercicio 10
```Erlang
%------------------------------------------------------------------------------
% Módulo:       mezclar_lista
% Propósito:    Mezclar los elementos de una lista de enteros en un orden aleatorio.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define la función `mezclar_lista/1` que toma una lista de enteros y
% devuelve una nueva lista con los elementos en un orden aleatorio. La función utiliza
% la función `rand:uniform/0` para asignar un valor aleatorio a cada elemento, luego
% clasifica la lista por estos valores aleatorios para obtener el orden mezclado.
%
% Dependencias:
% - `rand` módulo para la función `uniform/0`.
% - `lists` módulo para las funciones `sort/1` y `map`.
%
% Ejemplo de Uso:
% 1. Llamar a `mezclar_lista/1` con una lista de enteros:
%    `mezclar_lista:mezclar_lista([1, 2, 3, 4, 5])` podría devolver `[3, 1, 4, 5, 2]` 
%    en un orden aleatorio.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para mezclar los elementos de una lista de enteros.
%
% Notas:
% - El resultado es una permutación aleatoria de la lista de entrada.
% - La función `rand:uniform/0` debe ser inicializada adecuadamente en el entorno
%   de ejecución para obtener resultados aleatorios verdaderos.
%------------------------------------------------------------------------------

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

```
# Ejercicio 11
```Erlang
%------------------------------------------------------------------------------
% Módulo:       seleccionR
% Propósito:    Seleccionar un elemento aleatorio de una lista no vacía.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define la función `pick_random/1` que selecciona un elemento aleatorio
% de una lista no vacía. Utiliza la función `rand:uniform/1` para generar un índice
% aleatorio en el rango de la longitud de la lista, y luego usa `lists:nth/2` para
% recuperar el elemento en ese índice.
%
% Dependencias:
% - `rand` módulo para la función `uniform/1`.
% - `lists` módulo para la función `nth/2`.
%
% Ejemplo de Uso:
% 1. Llamar a `pick_random/1` con una lista no vacía:
%    `seleccionR:pick_random([a, b, c, d])` devolverá uno de los elementos `a`, 
%    `b`, `c` o `d` de manera aleatoria.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para seleccionar un elemento aleatorio de una lista.
%
% Notas:
% - La lista debe ser no vacía; de lo contrario, la función lanzará una excepción.
% - La función `rand:uniform/1` debe ser inicializada adecuadamente en el entorno
%   de ejecución para obtener resultados aleatorios verdaderos.
%------------------------------------------------------------------------------

% Definición del módulo `unicode_example`.
-module(seleccionR).

% Exportamos la función `pick_random/1`.
-export([pick_random/1]).

%% Selecciona un elemento aleatorio de una lista no vacía.
-spec pick_random(list()) -> any().
pick_random(List) when is_list(List), length(List) > 0 ->
    % Usa `rand:uniform/1` para generar un índice aleatorio dentro del rango de la lista,
    % y luego usa `lists:nth/2` para recuperar el elemento en ese índice.
    lists:nth(rand:uniform(length(List)), List).

```
# Ejercicio 12
```Erlang
%------------------------------------------------------------------------------
% Módulo:       busquedaLista
% Propósito:    Verificar si un valor está presente en una lista.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define la función `contains/2` que verifica si un valor específico
% está presente en una lista. Utiliza la función `lists:member/2` para realizar la 
% búsqueda, que devuelve `true` si el valor está en la lista y `false` en caso contrario.
%
% Dependencias:
% - `lists` módulo para la función `member/2`.
%
% Ejemplo de Uso:
% 1. Llamar a `contains/2` con un valor y una lista:
%    `busquedaLista:contains(a, [a, b, c])` devolverá `true`.
%    `busquedaLista:contains(d, [a, b, c])` devolverá `false`.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para verificar la presencia de un valor en una lista.
%
% Notas:
% - La función `lists:member/2` verifica la presencia del valor en la lista utilizando
%   una búsqueda secuencial.
%------------------------------------------------------------------------------

% Definición del módulo `unicode_example`.
-module(busquedaLista).

% Exportamos la función `contains/2`.
-export([contains/2]).

%% Verifica si un valor está presente en una lista.
-spec contains(any(), list(any())) -> boolean().
contains(Value, List) ->
    % Usa `lists:member/2` para comprobar si el valor está en la lista.
    lists:member(Value, List).

```
# Ejercicio 13
```Erlang
%------------------------------------------------------------------------------
% Módulo:       iterar_mapa
% Propósito:    Iterar sobre un mapa e imprimir sus claves y valores.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función principal `main/1` que actúa como punto de entrada
% cuando se ejecuta el script con `escript`. La función `main/1` crea un mapa de 
% ejemplo y llama a `imprimir_mapa/1` para recorrer e imprimir cada clave y valor del mapa.
% La función `imprimir_mapa/1` utiliza `maps:fold/3` para iterar sobre el mapa e imprimir 
% los pares clave-valor.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Guardar el módulo en un archivo, por ejemplo `iterar_mapa.erl`.
% 2. Ejecutar el script con escript:
%    escript iterar_mapa.erl
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para iterar e imprimir un mapa.
%
% Notas:
% El mapa en el ejemplo contiene claves de tipo atómico y valores de tipos variados.
%------------------------------------------------------------------------------

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

```
# Ejercicio 14
```Erlang
%------------------------------------------------------------------------------
% Módulo:       random
% Propósito:    Generar un número flotante aleatorio en un rango especificado.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define la función `random_float/2` que genera un número flotante 
% aleatorio en el rango especificado por los parámetros `A` (mínimo) y `B` (máximo).
% La función utiliza `rand:uniform/0` para generar un número flotante aleatorio 
% entre 0 y 1, y luego lo ajusta al rango dado.
%
% Dependencias:
% - `rand` módulo para la función `uniform/0`.
%
% Ejemplo de Uso:
% 1. Llamar a `random_float/2` con el rango deseado:
%    `random:random_float(1.0, 10.0)` devolverá un número flotante aleatorio 
%    entre 1.0 y 10.0.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para generar números flotantes aleatorios en un rango.
%
% Notas:
% - El rango está definido como [A, B) donde A es inclusivo y B es exclusivo.
% - Asegúrate de que A < B; de lo contrario, la función no funcionará correctamente.
%------------------------------------------------------------------------------

% Definición del módulo `unicode_example`.
-module(random).

% Exportamos la función `random_float/2`.
-export([random_float/2]).

%% Genera un número flotante aleatorio en el rango [A, B).
random_float(A, B) when A < B ->
    % Utiliza `rand:uniform/0` para obtener un número aleatorio entre 0 y 1,
    % luego ajusta el valor al rango [A, B).
    A + (B - A) * rand:uniform().

```
# Ejercicio 15
```Erlang
%------------------------------------------------------------------------------
% Módulo:       generar_aleatorio
% Propósito:    Generar un número entero aleatorio dentro de un rango especificado.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define la función `generar/2` que genera un número entero aleatorio
% en un rango especificado por los parámetros `A` (mínimo) y `B` (máximo). Utiliza
% la función `crypto:rand_uniform/2` para asegurar que el número generado sea
% uniformemente distribuido dentro del rango dado.
%
% Dependencias:
% - `crypto` módulo para la generación de números aleatorios.
%
% Ejemplo de Uso:
% 1. Llamar a `generar/2` con el rango deseado:
%    `generar_aleatorio:generar(1, 100)` devolverá un número entero aleatorio entre 1 y 100.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para generar números aleatorios en un rango.
%
% Notas:
% - El rango es inclusivo, es decir, el número generado puede ser igual a `A` o `B`.
%------------------------------------------------------------------------------

% Definición del módulo `generar_aleatorio`.
-module(generar_aleatorio).

% Exportamos la función `generar/2`.
-export([generar/2]).

%% Genera un número entero aleatorio entre A y B (ambos inclusive).
-spec generar(integer(), integer()) -> integer().
generar(A, B) ->
    % Utiliza `crypto:rand_uniform/2` para generar un número aleatorio en el rango dado.
    crypto:rand_uniform(A, B).

```

# Ejercicio 17
```Erlang
%------------------------------------------------------------------------------
% Módulo:       arbol
% Propósito:    Crear y manipular un árbol con nodos que pueden tener hijos y 
%               mostrar su estructura en la consola.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define un árbol de nodos donde cada nodo tiene un valor y puede tener
% una lista de nodos hijos. El módulo incluye funciones para crear nodos, agregar hijos 
% y mostrar el árbol en preorden (primero el nodo, luego sus hijos). Además, la función 
% `main/1` actúa como el punto de entrada para construir e imprimir un árbol básico.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Guardar el módulo en un archivo, por ejemplo `arbol.erl`.
% 2. Ejecutar el script con escript:
%    escript arbol.erl
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para crear, agregar y mostrar nodos de un árbol.
%
% Notas:
% Este módulo define un árbol básico con nodos que contienen un valor y una lista de hijos.
% Utiliza registros para representar los nodos del árbol.
%------------------------------------------------------------------------------

% Definición del módulo para trabajar con estructuras de árboles.
-module(arbol).

% Exportamos las funciones `main/1`, `crear_nodo/1`, `agregar_hijo/2` e `imprimir_arbol/1`.
-export([main/1, crear_nodo/1, agregar_hijo/2, imprimir_arbol/1]).

% Definición del registro que representa un nodo en el árbol.
-record(node, {
    value         :: any(),        % Valor del nodo
    children = [] :: [#node{}]     % Lista de nodos hijos
}).

% La función `main/1` es el punto de entrada cuando se ejecuta el script con escript.
main(_Args) ->
    % Crear el nodo raíz con valor 1.
    NodoRaiz = crear_nodo(1),

    % Crear algunos hijos.
    Hijo1 = crear_nodo(2),
    Hijo2 = crear_nodo(3),

    % Agregar los hijos al nodo raíz.
    NodoRaizConHijos = agregar_hijo(NodoRaiz, Hijo1),
    NodoRaizConHijos2 = agregar_hijo(NodoRaizConHijos, Hijo2),

    % Imprimir el árbol.
    imprimir_arbol(NodoRaizConHijos2).

% Función para crear un nodo con un valor dado.
crear_nodo(Valor) ->
    #node{value = Valor}.

% Función para agregar un hijo a un nodo.
agregar_hijo(Padre, Hijo) ->
    Padre#node{children = [Hijo | Padre#node.children]}.

% Función para imprimir un árbol en preorden (nodo primero, luego hijos).
imprimir_arbol(Nodo) ->
    io:format("Nodo: ~p~n", [Nodo#node.value]),
    lists:foreach(fun(Hijo) -> imprimir_arbol(Hijo) end, Nodo#node.children).

```

# Ejercicio 19
```Erlang
%------------------------------------------------------------------------------
% Módulo:       lista_reversa
% Propósito:    Invertir el orden de los elementos en una lista.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define la función `reversa/1` que invierte el orden de los elementos
% en una lista utilizando la función incorporada `lists:reverse/1`. La función 
% toma una lista como entrada y devuelve una nueva lista con el orden de los elementos
% invertido.
%
% Dependencias:
% - `lists` módulo para la función `reverse/1`.
%
% Ejemplo de Uso:
% 1. Llamar a `reversa/1` con una lista:
%    `lista_reversa:reversa([1, 2, 3])` devolverá `[3, 2, 1]`.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para invertir el orden de los elementos en una lista.
%
% Notas:
% - La función devuelve una nueva lista; la lista original no se modifica.
%------------------------------------------------------------------------------

% Definición del módulo `lista_reversa`.
-module(lista_reversa).

% Exportamos la función `reversa/1`.
-export([reversa/1]).

%% Invierte el orden de los elementos en una lista.
-spec reversa(list()) -> list().
reversa(List) ->
    % Utiliza `lists:reverse/1` para invertir el orden de los elementos en la lista.
    lists:reverse(List).

```
# Ejercicio 20
```Erlang
%------------------------------------------------------------------------------
% Módulo:       search
% Propósito:    Buscar un elemento en una matriz (lista de listas) y devolver 
%               su posición.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo contiene la función `search/2` que busca un elemento `X` en una 
% matriz `M` (lista de listas) y devuelve las coordenadas (fila, columna) del 
% elemento si se encuentra. Si no se encuentra, lanza una excepción `notfound`.
% 
% La búsqueda se realiza fila por fila y, dentro de cada fila, elemento por 
% elemento. Las funciones auxiliares `search_row/3` y `search/3` ayudan a 
% controlar el flujo de la búsqueda.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Llamar a `search/2` pasando un elemento y una matriz:
%    `search:search(5, [[1,2,3], [4,5,6], [7,8,9]])` devolverá `{2, 2}`.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo para búsqueda de elementos en matrices.
%
% Notas:
% - El índice de las filas y columnas comienza en 1.
% - Si el elemento no se encuentra, se lanza una excepción `notfound`.
%------------------------------------------------------------------------------

% Definición del módulo `search`.
-module(search).

% Exportamos la función principal `search/2`.
-export([search/2]).

%% Tipo de especificación: `search/2` busca un elemento en una matriz de listas.
-spec search(any(), [[any()]]) -> {pos_integer(), pos_integer()} | notfound.

%% Implementación de `search/2`, que llama a `search/3` con un contador de filas.
search(X, M) -> search(X, M, 1).

%% Función auxiliar `search/3` que controla la búsqueda en la matriz.
search(_, [], _) -> 
    notfound;  % Si no hay más filas, devolver `notfound`.
search(X, [R|Rs], RN) ->              % Si hay filas, buscar en la fila actual.
    case search_row(X, R, 1) of
        {found, CN} -> {RN, CN};      % Si se encuentra, devolver la posición (fila, columna).
        notfound -> search(X, Rs, RN+1)  % Si no se encuentra, buscar en la siguiente fila.
    end.

%% Función auxiliar `search_row/3` que busca en una fila y devuelve la columna si se encuentra el elemento.
search_row(_, [], _) -> 
    notfound;  % Si no hay más columnas, devolver `notfound`.
search_row(X, [X|_], CN) -> 
    {found, CN};  % Si se encuentra el elemento, devolver la columna.
search_row(X, [_|Cs], CN) -> 
    search_row(X, Cs, CN+1).  % Si no se encuentra, continuar en la siguiente columna.

```
# Ejercicio 21
```Erlang
%------------------------------------------------------------------------------
% Módulo:       my_module
% Propósito:    Ejecución de una serie de funciones que demuestran el paso de
%               parámetros y la llamada de funciones en Erlang.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo contiene varias funciones interrelacionadas que se llaman entre sí
% para demostrar el flujo de datos a través de múltiples funciones en Erlang.
% Las funciones `fun1/2` y `fun2/2` intercambian y procesan valores, mientras que 
% las funciones auxiliares (`something/0`, `now/3`, `and_fun/3`, `moving/0`) 
% proporcionan salida de texto para ilustrar su comportamiento.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Llamar a `fun1/2` pasando dos valores:
%    `my_module:fun1("Hello", "World")`.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones de ejemplo para paso de parámetros y control de flujo.
%
% Notas:
% Las funciones simplemente imprimen mensajes para mostrar el flujo de ejecución
% y el intercambio de datos entre ellas.
%------------------------------------------------------------------------------

% Definición del módulo `my_module`.
-module(my_module).

% Exportamos las funciones `fun1/2`, `fun2/2`, `something/0`, `now/3`, `and_fun/3`, y `moving/0`.
-export([fun1/2, fun2/2, something/0, now/3, and_fun/3, moving/0]).

%% Implementación de `fun1/2` que llama a `something/0` y luego a `fun2/2`.
fun1(A, B) ->
    something(),
    fun2(B, A).

%% Implementación de `fun2/2` que llama a `now/3`, `and_fun/3`, y `moving/0`.
fun2(A, B) ->
    now(A, is, B),
    and_fun(B, is, A),
    moving().

%% Implementación de `something/0` que imprime un mensaje.
something() ->
    io:format("Doing something~n").

%% Implementación de `now/3` que imprime el valor de los parámetros.
now(A, is, B) ->
    io:format("Now: ~p is ~p~n", [A, B]).

%% Implementación de `and_fun/3` que imprime el valor de los parámetros.
and_fun(A, is, B) ->
    io:format("And: ~p is ~p~n", [A, B]).

%% Implementación de `moving/0` que imprime un mensaje de acción.
moving() ->
    io:format("Moving on~n").

```
# Ejercicio 22
```Erlang
%------------------------------------------------------------------------------
% Módulo:       example
% Propósito:    Convertir una lista de caracteres que representa un número en
%               su valor entero correspondiente.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `convert_list_to_integer/1` que convierte una 
% lista de caracteres (string) que representa un número en un entero. La conversión
% se realiza utilizando la función `list_to_integer/1` de Erlang.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Llamar a `convert_list_to_integer/1` con una lista de caracteres:
%    `example:convert_list_to_integer("123")`.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función para convertir listas de caracteres en enteros.
%
% Notas:
% La función asume que la lista de caracteres representa un número válido, por lo que
% no maneja errores si se pasa una cadena que no puede convertirse a entero.
%------------------------------------------------------------------------------

% Definición del módulo `example` para convertir listas de caracteres en enteros.
-module(example).

% Exportamos la función `convert_list_to_integer/1`.
-export([convert_list_to_integer/1]).

%% Convierte una lista de caracteres a un entero.
convert_list_to_integer(S) ->
    % Utiliza `list_to_integer/1` para convertir la lista de caracteres a entero.
    I = list_to_integer(S),
    % Devuelve el entero resultante.
    I.

```
# Ejercicio 23
```Erlang
%------------------------------------------------------------------------------
% Módulo:      flotante
% Propósito:    Formatear un número de punto flotante con dos decimales y 
%               convertirlo a una lista de caracteres.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define una función `format_float/1` que toma un número de punto 
% flotante y lo convierte a una lista de caracteres con dos decimales de precisión.
% El formato se realiza usando la función `io_lib:format/2` con el especificador `~.2f`.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Llamar a `format_float/1` con un número de punto flotante:
%    `flotante:format_float(3.14159)`.
%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con función para formatear números de punto flotante.
%
% Notas:
% La función devuelve una lista de caracteres (string) que representa el número 
% formateado con dos decimales. El formato sigue la convención del especificador `~.2f` de Erlang.
%------------------------------------------------------------------------------

% Definición del módulo `format_example` para formatear números de punto flotante.
-module(flotante).

% Exportamos la función `format_float/1`.
-export([format_float/1]).

%% Convierte un número de punto flotante a una lista de caracteres con dos decimales.
format_float(X) ->
    % Utiliza `io_lib:format/2` para formatear el número con dos decimales.
    io_lib:format("~.2f", [X]).

```
# Ejercicio 24
```Erlang
%------------------------------------------------------------------------------
% Módulo:       convertidor
% Propósito:    Convertir cadenas de caracteres Unicode a formato binario y 
%               viceversa.
%
% Autor:        Javier Rosas
% Fecha:        04 de Septiembre de 2024
% Versión:      1.0
%
% Descripción:
% Este módulo define dos funciones: `convert_to_binary/1` y `convert_from_binary/1`.
% La primera convierte una cadena de caracteres Unicode a su representación binaria,
% mientras que la segunda convierte esa representación binaria de vuelta a una cadena
% de caracteres Unicode. Es útil para el manejo de datos en sistemas que trabajan 
% con binarios o necesitan realizar conversiones entre formatos.
%
% Dependencias:
% Ninguna.
%
% Ejemplo de Uso:
% 1. Llamar a `convert_to_binary/1` con una cadena de caracteres Unicode:
%    1> Bin = convertidor:convert_to_binary("Hola, mundo").
<<"Hola, mundo">>

% 2. Llamar a `convert_from_binary/1` con el binario obtenido:
%   2> convertidor:convert_from_binary(Bin).
"Hola, mundo"

%
% Historial de Cambios:
% 04/09/2024 - 1.0 - Creación del módulo con funciones para convertir entre cadenas Unicode y binarios.
%
% Notas:
% Este módulo utiliza funciones del módulo `unicode` de Erlang para realizar las 
% conversiones entre cadenas y binarios.
%------------------------------------------------------------------------------

% Definición del módulo `unicode_example` para trabajar con conversiones entre
% cadenas de caracteres Unicode y binarios.
-module(convertidor).

% Exportamos las funciones `convert_to_binary/1` y `convert_from_binary/1`.
-export([convert_to_binary/1, convert_from_binary/1]).

%% Convierte una cadena de caracteres Unicode a binario.
convert_to_binary(S) ->
    % Utiliza `unicode:characters_to_binary/1` para convertir la cadena a binario.
    Bin = unicode:characters_to_binary(S),
    % Devuelve el binario resultante.
    Bin.

%% Convierte binario de vuelta a una cadena de caracteres Unicode.
convert_from_binary(Bin) ->
    % Utiliza `unicode:binary_to_characters/1` para convertir binario a una cadena.
    unicode:characters_to_list(Bin).

```
