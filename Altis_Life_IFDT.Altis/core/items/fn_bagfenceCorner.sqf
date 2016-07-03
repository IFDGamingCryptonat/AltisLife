/*
	File: fn_bagfenceCorner.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a corner sandbag fence and places it.
*/
private["_position","_bagfenceCorner"];
_bagfenceCorner = "Land_BagFence_Corner_F" createVehicle [0,0,0];
_bagfenceCorner attachTo[player,[0,3,0]];
_bagfenceCorner setDir 0;
_bagfenceCorner setVariable["item","cbagfenceDeployed",true];

_bagfenceCorner allowDamage true;

life_action_bagfenceCornerDeploy = player addAction["Place Corner Sandbag Fence",{if(!isNull life_bagfencecorner) then {detach life_bagfenceCorner; life_bagfenceCorner = ObjNull;}; player removeAction life_action_bagfenceCornerDeploy; life_action_bagfenceCornerDeploy = nil;},"",999,false,false,"",'!isNull life_bagfencecorner'];
life_bagfencecorner = _bagfenceCorner;
waitUntil {isNull life_bagfenceCorner};
if(!isNil "life_action_bagfenceCornerDeploy") then {player removeAction life_action_bagfenceCornerDeploy;};
if(isNull _bagfenceCorner) exitWith {life_bagfenceCorner = ObjNull;};
_bagfenceCorner setPos [(getPos _bagfenceCorner select 0),(getPos _bagfenceCorner select 1),0];
_bagfenceCorner setDamage 1;
life_action_bagfenceCornerPickup = player addAction["Retrieve Corner Sandbag Fence",life_fnc_retrieveBagfencecorner,"",0,false,false,"",
' _cbagfence = nearestObjects[getPos player,["Land_BagFence_Corner_F"],8] select 0; !isNil "_cbagfence" && !isNil {(_cbagfence getVariable "item")}'];
[[_bagfenceCorner],"TON_fnc_bagfenceCorner",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.