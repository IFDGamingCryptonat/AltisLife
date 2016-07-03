/*
	File: fn_campFire.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a camp fire and places it.
*/
private["_position","_campFire"];
_campFire = "Land_Campfire_F" createVehicle [0,0,0];
_campFire attachTo[player,[0,3,0]];
_campFire setDir 90;
_campFire setVariable["item","campDeployed",true];

life_action_campFireDeploy = player addAction["Place Campfire",{if(!isNull life_campfire) then {detach life_campFire; life_campFire = ObjNull;}; player removeAction life_action_campFireDeploy; life_action_campFireDeploy = nil;},"",999,false,false,"",'!isNull life_campfire'];
life_campfire = _campFire;
waitUntil {isNull life_campFire};
if(!isNil "life_action_campFireDeploy") then {player removeAction life_action_campFireDeploy;};
if(isNull _campFire) exitWith {life_campfire = ObjNull;};
_campFire setPos [(getPos _campFire select 0),(getPos _campFire select 1),0];
_campFire setDamage 1;
life_action_campFirePickup = player addAction["Retrieve Campfire",life_fnc_retrieveCampfire,"",0,false,false,"",
' _camp = nearestObjects[getPos player,["Land_Campfire_F"],8] select 0; !isNil "_camp" && !isNil {(_camp getVariable "item")}'];
[[_campFire],"TON_fnc_campFire",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.