/*
	File: fn_retrieveBagfenceshort.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a short sandbag fence.
*/
private["_sbagfence"];
_sbagfence = nearestObjects[getPos player,["Land_BagFence_Short_F"],8] select 0;
if(isNil "_sbagfence") exitWith {};

if(([true,"bagfenceShort",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the short sandbag fence.","PLAIN"];
	player removeAction life_action_bagfenceShortPickup;
	life_action_bagfenceShortPickup = nil;
	deleteVehicle _sbagfence;
};