/*
	File: fn_retrieveBagfencecorner.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a corner sandbag fence.
*/
private["_cbagfence"];
_cbagfence = nearestObjects[getPos player,["Land_BagFence_Corner_F"],8] select 0;
if(isNil "_cbagfence") exitWith {};

if(([true,"bagfenceCorner",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the corner sandbag fence.","PLAIN"];
	player removeAction life_action_bagfenceCornerPickup;
	life_action_bagfenceCornerPickup = nil;
	deleteVehicle _cbagfence;
};