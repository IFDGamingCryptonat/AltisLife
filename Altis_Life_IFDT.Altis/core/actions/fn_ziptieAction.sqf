/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "tied")) exitWith {};
if(life_inv_ziptie == 0) exitWith {hint "You don't have any zipties!"};

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable["tied",true,true];
[[player], "life_fnc_ziptiePerson", _unit, false] spawn life_fnc_MP;
[false,"ziptie",1] call life_fnc_handleInv;
