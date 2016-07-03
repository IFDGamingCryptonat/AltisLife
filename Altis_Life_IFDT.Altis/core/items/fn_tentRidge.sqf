/*
	File: fn_tentRidge.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a ridge tent and places it.
*/
private["_position","_tentRidge"];
_tentRidge = "Land_TentA_F" createVehicle [0,0,0];
_tentRidge attachTo[player,[0,3,0]];
_tentRidge setDir 90;
_tentRidge setVariable["item","tentrDeployed",true];

life_action_tentRidgeDeploy = player addAction["Place Ridge Tent",{if(!isNull life_tentridge) then {detach life_tentRidge; life_tentRidge = ObjNull;}; player removeAction life_action_tentRidgeDeploy; life_action_tentRidgeDeploy = nil;},"",999,false,false,"",'!isNull life_tentridge'];
life_tentridge = _tentRidge;
waitUntil {isNull life_tentRidge};
if(!isNil "life_action_tentRidgeDeploy") then {player removeAction life_action_tentRidgeDeploy;};
if(isNull _tentRidge) exitWith {life_tentRidge = ObjNull;};
_tentRidge setPos [(getPos _tentRidge select 0),(getPos _tentRidge select 1),0];
_tentRidge setDamage 1;
life_action_tentRidgePickup = player addAction["Retrieve Ridge Tent",life_fnc_retrieveRidgetent,"",0,false,false,"",
' _tentr = nearestObjects[getPos player,["Land_TentA_F"],8] select 0; !isNil "_tentr" && !isNil {(_tentr getVariable "item")}'];
[[_tentRidge],"TON_fnc_tentRidge",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.