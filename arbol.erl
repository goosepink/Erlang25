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
