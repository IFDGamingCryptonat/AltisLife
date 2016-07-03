/*
	File: fn_retriveBunker.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed bunker.
*/
private["_bunker"];
_bunker = nearestObjects[getPos player,["Land_BagBunker_Small_F"],8] select 0;
if(isNil "_bunker") exitWith {};

if(([true,"bagBunker",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the bunker.","PLAIN"];
	player removeAction life_action_bagBunkerPickup;
	life_action_bagBunkerPickup = nil;
	deleteVehicle _bunker;
};