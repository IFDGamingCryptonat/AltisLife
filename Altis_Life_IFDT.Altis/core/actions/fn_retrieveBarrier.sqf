/*
	File: fn_retriveBarrier.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed road barrier.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"roadBarrier",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the road barrier.","PLAIN"];
	player removeAction life_action_roadBarrierPickup;
	life_action_roadBarrierPickup = nil;
	deleteVehicle _barrier;
};