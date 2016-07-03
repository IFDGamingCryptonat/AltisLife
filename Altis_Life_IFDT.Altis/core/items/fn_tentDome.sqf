/*
	File: fn_tentDome.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a dome tent and places it.
*/
private["_position","_tentDome"];
_tentDome = "Land_TentDome_F" createVehicle [0,0,0];
_tentDome attachTo[player,[0,3,0]];
_tentDome setDir 90;
_tentDome setVariable["item","tentdDeployed",true];

life_action_tentDomeDeploy = player addAction["Place Dome Tent",{if(!isNull life_tentdome) then {detach life_tentDome; life_tentDome = ObjNull;}; player removeAction life_action_tentDomeDeploy; life_action_tentDomeDeploy = nil;},"",999,false,false,"",'!isNull life_tentdome'];
life_tentdome = _tentDome;
waitUntil {isNull life_tentDome};
if(!isNil "life_action_tentDomeDeploy") then {player removeAction life_action_tentDomeDeploy;};
if(isNull _tentDome) exitWith {life_tentDome = ObjNull;};
_tentDome setPos [(getPos _tentDome select 0),(getPos _tentDome select 1),0];
_tentDome setDamage 1;
life_action_tentDomePickup = player addAction["Retrieve Dome Tent",life_fnc_retrieveDometent,"",0,false,false,"",
' _tentd = nearestObjects[getPos player,["Land_TentDome_F"],8] select 0; !isNil "_tentd" && !isNil {(_tentd getVariable "item")}'];
[[_tentDome],"TON_fnc_tentDome",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.