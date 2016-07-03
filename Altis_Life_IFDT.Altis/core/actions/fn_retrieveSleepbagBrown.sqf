/*
	File: fn_retrieveSleepbagBrown.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed brown sleeping bag.
*/
private["_sleepbrown"];
_sleepbrown = nearestObjects[getPos player,["Land_Sleeping_bag_brown_F"],8] select 0;
if(isNil "_sleepbrown") exitWith {};

if(([true,"sleepbagBrown",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the brown sleeping bag.","PLAIN"];
	player removeAction life_action_sleepbagBrownPickup;
	life_action_sleepbagBrownPickup = nil;
	deleteVehicle _sleepbrown;
};