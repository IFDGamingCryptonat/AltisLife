/*
	Author: Cryptonat
	
*/
private["_unit"];
_unit = cursorTarget;

if(isNull _unit || !(_unit getVariable "tied")) exitWith {};

_unit setVariable["tied",false,true];
[[0,format["%1 was released by %2.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;