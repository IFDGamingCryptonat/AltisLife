/*
	File: fn_retrieveRidgetent.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a ridge tent.
*/
private["_tentr"];
_tentr = nearestObjects[getPos player,["Land_TentA_F"],8] select 0;
if(isNil "_tentr") exitWith {};

if(([true,"tentRidge",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the ridge tent.","PLAIN"];
	player removeAction life_action_tentRidgePickup;
	life_action_tentRidgePickup = nil;
	deleteVehicle _tentr;
};