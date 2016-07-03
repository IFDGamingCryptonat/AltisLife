/*
	File: fn_unrestrain.sqf
*/
private["_unit"];

if((call life_adminlevel) < 1) exitWith {};

//_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];


if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;

[[0,format["ADMIN ACTION: %1 has been unrestrained by %2.",name _unit, name player]],"life_fnc_broadcast",TRUE,FALSE] call life_fnc_MP;
hint format["%1 unrestrained.", name _unit];