/*
	File: fn_bagfenceRound.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a round sandbag fence and places it.
*/
private["_position","_bagfenceRound"];
_bagfenceRound = "Land_BagFence_Round_F" createVehicle [0,0,0];
_bagfenceRound attachTo[player,[0,3,0]];
_bagfenceRound setDir 0;
_bagfenceRound setVariable["item","rbagfenceDeployed",true];

_bagfenceRound allowDamage true;

life_action_bagfenceRoundDeploy = player addAction["Place Round Sandbag Fence",{if(!isNull life_bagfenceround) then {detach life_bagfenceRound; life_bagfenceRound = ObjNull;}; player removeAction life_action_bagfenceRoundDeploy; life_action_bagfenceRoundDeploy = nil;},"",999,false,false,"",'!isNull life_bagfenceround'];
life_bagfenceround = _bagfenceRound;
waitUntil {isNull life_bagfenceRound};
if(!isNil "life_action_bagfenceRoundDeploy") then {player removeAction life_action_bagfenceRoundDeploy;};
if(isNull _bagfenceRound) exitWith {life_bagfenceRound = ObjNull;};
_bagfenceRound setPos [(getPos _bagfenceRound select 0),(getPos _bagfenceRound select 1),0];
_bagfenceRound setDamage 1;
life_action_bagfenceRoundPickup = player addAction["Retrieve Round Sandbag Fence",life_fnc_retrieveBagfenceround,"",0,false,false,"",
' _rbagfence = nearestObjects[getPos player,["Land_BagFence_Round_F"],8] select 0; !isNil "_rbagfence" && !isNil {(_rbagfence getVariable "item")}'];
[[_bagfenceRound],"TON_fnc_bagfenceRound",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.