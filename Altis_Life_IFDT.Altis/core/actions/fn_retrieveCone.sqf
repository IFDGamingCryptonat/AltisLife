/*
	File: fn_retriveCone.sqf
	Author: Cavliere
	
	Description:
	Retrieves a placed road cone.
*/
private["_cone"];
_cone = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
if(isNil "_cone") exitWith {};

if(([true,"roadCone",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the road cone.","PLAIN"];
	player removeAction life_action_roadConePickup;
	life_action_roadConePickup = nil;
	deleteVehicle _cone;
};