/*
	File: fn_cautionTape.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates caution tape and places it.
*/
private["_position","_cautionTape"];
_cautionTape = "TapeSign_F" createVehicle [0,0,0];
_cautionTape attachTo[player,[0,3,0]];
_cautionTape setDir 0;
_cautionTape setVariable["item","tapeDeployed",true];

life_action_cautionTapeDeploy = player addAction["Place Caution Tape",{if(!isNull life_cautiontape) then {detach life_cautionTape; life_cautionTape = ObjNull;}; player removeAction life_action_cautionTapeDeploy; life_action_cautionTapeDeploy = nil;},"",999,false,false,"",'!isNull life_cautiontape'];
life_cautiontape = _cautionTape;
waitUntil {isNull life_cautionTape};
if(!isNil "life_action_cautionTapeDeploy") then {player removeAction life_action_cautionTapeDeploy;};
if(isNull _cautionTape) exitWith {life_cautiontape = ObjNull;};
_cautionTape setPos [(getPos _cautionTape select 0),(getPos _cautionTape select 1),0];
_cautionTape setDamage 1;
life_action_cautionTapePickup = player addAction["Retrieve Caution Tape",life_fnc_retrieveTape,"",0,false,false,"",
' _tape = nearestObjects[getPos player,["TapeSign_F"],8] select 0; !isNil "_tape" && !isNil {(_tape getVariable "item")}'];
[[_cautionTape],"TON_fnc_cautionTape",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.