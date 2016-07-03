/*
	File: fn_retrieveBagfenceround.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a round sandbag fence.
*/
private["_rbagfence"];
_rbagfence = nearestObjects[getPos player,["Land_BagFence_Round_F"],8] select 0;
if(isNil "_rbagfence") exitWith {};

if(([true,"bagfenceRound",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the round sandbag fence.","PLAIN"];
	player removeAction life_action_bagfenceRoundPickup;
	life_action_bagfenceRoundPickup = nil;
	deleteVehicle _rbagfence;
};