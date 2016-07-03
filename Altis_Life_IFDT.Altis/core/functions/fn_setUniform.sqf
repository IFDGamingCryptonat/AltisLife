

private ["_unit","_texture"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_texture = [_this, 1, "", [""]] call BIS_fnc_param;

if (isNull _unit || _texture == "") exitWith {};

_unit setObjectTexture [0, _texture];