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