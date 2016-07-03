/*
	File: fn_retrieveBagfencelong.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a long sandbag fence.
*/
private["_lbagfence"];
_lbagfence = nearestObjects[getPos player,["Land_BagFence_Long_F"],8] select 0;
if(isNil "_lbagfence") exitWith {};

if(([true,"bagfenceLong",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the long sandbag fence.","PLAIN"];
	player removeAction life_action_bagfenceLongPickup;
	life_action_bagfenceLongPickup = nil;
	deleteVehicle _lbagfence;
};