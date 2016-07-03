/*
	File: fn_retrieveSleepbagBlue.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed blue sleeping bag.
*/
private["_sleepblue"];
_sleepblue = nearestObjects[getPos player,["Land_Sleeping_bag_blue_F"],8] select 0;
if(isNil "_sleepblue") exitWith {};

if(([true,"sleepbagBlue",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the blue sleeping bag.","PLAIN"];
	player removeAction life_action_sleepbagBluePickup;
	life_action_sleepbagBluePickup = nil;
	deleteVehicle _sleepblue;
};