/*
	File: fn_retriveGate.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Retrieves a placed bar gate.
*/
private["_gate"];
_gate = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0;
if(isNil "_gate") exitWith {};

if(([true,"barGate",1] call life_fnc_handleInv)) then
{
	titleText["You have retrieved the bar gate.","PLAIN"];
	player removeAction life_action_barGatePickup;
	life_action_barGatePickup = nil;
	deleteVehicle _gate;
};