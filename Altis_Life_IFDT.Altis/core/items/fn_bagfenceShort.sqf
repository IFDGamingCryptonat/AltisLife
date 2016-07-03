/*
	File: fn_bagfenceShort.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a short sandbag fence and places it.
*/
private["_position","_bagfenceShort"];
_bagfenceShort = "Land_BagFence_Short_F" createVehicle [0,0,0];
_bagfenceShort attachTo[player,[0,3,0]];
_bagfenceShort setDir 0;
_bagfenceShort setVariable["item","sbagfenceDeployed",true];

_bagfenceShort allowDamage true;

life_action_bagfenceShortDeploy = player addAction["Place Short Sandbag Fence",{if(!isNull life_bagfenceshort) then {detach life_bagfenceShort; life_bagfenceShort = ObjNull;}; player removeAction life_action_bagfenceShortDeploy; life_action_bagfenceShortDeploy = nil;},"",999,false,false,"",'!isNull life_bagfenceshort'];
life_bagfenceshort = _bagfenceShort;
waitUntil {isNull life_bagfenceShort};
if(!isNil "life_action_bagfenceShortDeploy") then {player removeAction life_action_bagfenceShortDeploy;};
if(isNull _bagfenceShort) exitWith {life_bagfenceShort = ObjNull;};
_bagfenceShort setPos [(getPos _bagfenceShort select 0),(getPos _bagfenceShort select 1),0];
_bagfenceShort setDamage 1;
life_action_bagfenceShortPickup = player addAction["Retrieve Short Sandbag Fence",life_fnc_retrieveBagfenceshort,"",0,false,false,"",
' _sbagfence = nearestObjects[getPos player,["Land_BagFence_Short_F"],8] select 0; !isNil "_sbagfence" && !isNil {(_sbagfence getVariable "item")}'];
[[_bagfenceShort],"TON_fnc_bagfenceShort",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.