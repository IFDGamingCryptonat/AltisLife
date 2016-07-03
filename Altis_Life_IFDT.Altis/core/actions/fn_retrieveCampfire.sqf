/*
	File: fn_retrieveCampfire.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed campfire.
*/
private["_camp"];
_camp = nearestObjects[getPos player,["Land_Campfire_F"],8] select 0;
if(isNil "_camp") exitWith {};

if(([true,"campFire",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the campfire.","PLAIN"];
	player removeAction life_action_campFirePickup;
	life_action_campFirePickup = nil;
	deleteVehicle _camp;
};