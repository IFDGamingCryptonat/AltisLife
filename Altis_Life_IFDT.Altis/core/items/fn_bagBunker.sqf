/*
	File: fn_bagBunker.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a small bunker and places it.
*/
private["_position","_bagBunker"];
_bagBunker = "Land_BagBunker_Small_F" createVehicle [0,0,0];
_bagBunker attachTo[player,[0,3,0]];
_bagBunker setDir 0;
_bagBunker setVariable["item","bunkerDeployed",true];

life_action_bagBunkerDeploy = player addAction["Place Bunker",{if(!isNull life_bagbunker) then {detach life_bagBunker; life_bagBunker = ObjNull;}; player removeAction life_action_bagBunkerDeploy; life_action_bagBunkerDeploy = nil;},"",999,false,false,"",'!isNull life_bagbunker'];
life_bagbunker = _bagBunker;
waitUntil {isNull life_bagBunker};
if(!isNil "life_action_bagBunkerDeploy") then {player removeAction life_action_bagBunkerDeploy;};
if(isNull _bagBunker) exitWith {life_bagbunker = ObjNull;};
_bagBunker setPos [(getPos _bagBunker select 0),(getPos _bagBunker select 1),0];
_bagBunker setDamage 1;
life_action_bagBunkerPickup = player addAction["Retrieve Bunker",life_fnc_retrieveBunker,"",0,false,false,"",
' _bunker = nearestObjects[getPos player,["Land_BagBunker_Small_F"],8] select 0; !isNil "_bunker" && !isNil {(_bunker getVariable "item")}'];
[[_bagBunker],"TON_fnc_bagBunker",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.