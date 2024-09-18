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
