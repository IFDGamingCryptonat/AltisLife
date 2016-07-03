/*
	File: fn_retrieveGenerator.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a portable generator.
*/
private["_generator"];
_generator = nearestObjects[getPos player,["Land_Portable_generator_F"],8] select 0;
if(isNil "_generator") exitWith {};

if(([true,"portGenerator",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the portable generator.","PLAIN"];
	player removeAction life_action_portGeneratorPickup;
	life_action_portGeneratorPickup = nil;
	deleteVehicle _generator;
};