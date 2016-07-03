/*
	File: fn_retrieveDometent.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a dome tent.
*/
private["_tentd"];
_tentd = nearestObjects[getPos player,["Land_TentDome_F"],8] select 0;
if(isNil "_tentd") exitWith {};

if(([true,"tentDome",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the dome tent.","PLAIN"];
	player removeAction life_action_tentDomePickup;
	life_action_tentDomePickup = nil;
	deleteVehicle _tentd;
};