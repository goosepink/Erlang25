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