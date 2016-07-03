/*
	File: fn_bagfenceLong.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a long sandbag fence and places it.
*/
private["_position","_bagfenceLong"];
_bagfenceLong = "Land_BagFence_Long_F" createVehicle [0,0,0];
_bagfenceLong attachTo[player,[0,3,0]];
_bagfenceLong setDir 0;
_bagfenceLong setVariable["item","lbagfenceDeployed",true];

_bagfenceLong allowDamage true;

life_action_bagfenceLongDeploy = player addAction["Place Long Sandbag Fence",{if(!isNull life_bagfencelong) then {detach life_bagfenceLong; life_bagfenceLong = ObjNull;}; player removeAction life_action_bagfenceLongDeploy; life_action_bagfenceLongDeploy = nil;},"",999,false,false,"",'!isNull life_bagfencelong'];
life_bagfencelong = _bagfenceLong;
waitUntil {isNull life_bagfenceLong};
if(!isNil "life_action_bagfenceLongDeploy") then {player removeAction life_action_bagfenceLongDeploy;};
if(isNull _bagfenceLong) exitWith {life_bagfenceLong = ObjNull;};
_bagfenceLong setPos [(getPos _bagfenceLong select 0),(getPos _bagfenceLong select 1),0];
_bagfenceLong setDamage 1;
life_action_bagfenceLongPickup = player addAction["Retrieve Long Sandbag Fence",life_fnc_retrieveBagfencelong,"",0,false,false,"",
' _lbagfence = nearestObjects[getPos player,["Land_BagFence_Long_F"],8] select 0; !isNil "_lbagfence" && !isNil {(_lbagfence getVariable "item")}'];
[[_bagfenceLong],"TON_fnc_bagfenceLong",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.