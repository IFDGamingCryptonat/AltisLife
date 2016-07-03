/*
	File: fn_barGate.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a stop sign bar gate and places it.
*/
private["_position","_barGate"];
_barGate = "Land_BarGate_F" createVehicle [0,0,0];
_barGate attachTo[player,[0,3,0]];
_barGate setDir 0;
_barGate setVariable["item","gateDeployed",true];
_barGate enableSimulation false;

life_action_barGateDeploy = player addAction["Place Bar Gate",{if(!isNull life_bargate) then {detach life_barGate; life_barGate = ObjNull;}; player removeAction life_action_barGateDeploy; life_action_barGateDeploy = nil;},"",999,false,false,"",'!isNull life_bargate'];
life_bargate = _barGate;
waitUntil {isNull life_barGate};
if(!isNil "life_action_barGateDeploy") then {player removeAction life_action_barGateDeploy;};
if(isNull _barGate) exitWith {life_bargate = ObjNull;};
_barGate setPos [(getPos _barGate select 0),(getPos _barGate select 1),0];
_barGate setDamage 1;
life_action_barGatePickup = player addAction["Retrieve Bar Gate",life_fnc_retrieveGate,"",0,false,false,"",
' _gate = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_gate" && !isNil {(_gate getVariable "item")}'];
[[_barGate],"TON_fnc_barGate",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.