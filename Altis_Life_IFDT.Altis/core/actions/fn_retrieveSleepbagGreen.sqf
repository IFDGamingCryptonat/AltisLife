/*
	File: fn_retrieveSleepbagGreen.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed green sleeping bag.
*/
private["_sleepgreen"];
_sleepgreen = nearestObjects[getPos player,["Land_Sleeping_bag_F"],8] select 0;
if(isNil "_sleepgreen") exitWith {};

if(([true,"sleepbagGreen",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the green sleeping bag.","PLAIN"];
	player removeAction life_action_sleepbagGreenPickup;
	life_action_sleepbagGreenPickup = nil;
	deleteVehicle _sleepgreen;
};