/*
	File: fn_roadBarrier.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a road barrier and places it.
*/
private["_position","_roadBarrier"];
_roadBarrier = "RoadBarrier_F" createVehicle [0,0,0];
_roadBarrier attachTo[player,[0,3,0]];
_roadBarrier setDir 0;
_roadBarrier setVariable["item","barrierDeployed",true];

life_action_roadBarrierDeploy = player addAction["Place Road Barrier",{if(!isNull life_roadbarrier) then {detach life_roadBarrier; life_roadBarrier = ObjNull;}; player removeAction life_action_roadBarrierDeploy; life_action_roadBarrierDeploy = nil;},"",999,false,false,"",'!isNull life_roadbarrier'];
life_roadbarrier = _roadBarrier;
waitUntil {isNull life_roadBarrier};
if(!isNil "life_action_roadBarrierDeploy") then {player removeAction life_action_roadBarrierDeploy;};
if(isNull _roadBarrier) exitWith {life_roadbarrier = ObjNull;};
_roadBarrier setPos [(getPos _roadBarrier select 0),(getPos _roadBarrier select 1),0];
_roadBarrier setDamage 1;
life_action_roadBarrierPickup = player addAction["Retrieve Road Barrier",life_fnc_retrieveBarrier,"",0,false,false,"",
' _barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}'];
[[_roadBarrier],"TON_fnc_roadBarrier",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.