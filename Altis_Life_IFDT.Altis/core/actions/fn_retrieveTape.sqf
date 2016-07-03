/*
	File: fn_retrieveTape.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed caution tape.
*/
private["_tape"];
_tape = nearestObjects[getPos player,["TapeSign_F"],8] select 0;
if(isNil "_tape") exitWith {};

if(([true,"cautionTape",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the caution tape.","PLAIN"];
	player removeAction life_action_cautionTapePickup;
	life_action_cautionTapePickup = nil;
	deleteVehicle _tape;
};