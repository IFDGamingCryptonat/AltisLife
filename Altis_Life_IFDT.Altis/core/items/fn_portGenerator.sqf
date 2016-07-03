/*
	File: fn_portGenerator.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a portable generator and places it.
*/
private["_position","_portGenerator"];
_portGenerator = "Land_Portable_generator_F" createVehicle [0,0,0];
_portGenerator attachTo[player,[0,3,0]];
_portGenerator setDir 90;
_portGenerator setVariable["item","generatorDeployed",true];

life_action_portGeneratorDeploy = player addAction["Place Portable Generator",{if(!isNull life_portgenerator) then {detach life_portGenerator; life_portGenerator = ObjNull;}; player removeAction life_action_portGeneratorDeploy; life_action_portGeneratorDeploy = nil;},"",999,false,false,"",'!isNull life_portgenerator'];
life_portgenerator = _portGenerator;
waitUntil {isNull life_portGenerator};
if(!isNil "life_action_portGeneratorDeploy") then {player removeAction life_action_portGeneratorDeploy;};
if(isNull _portGenerator) exitWith {life_portGenerator = ObjNull;};
_portGenerator setPos [(getPos _portGenerator select 0),(getPos _portGenerator select 1),0];
_portGenerator setDamage 1;
life_action_portGeneratorPickup = player addAction["Retrieve Portable Generator",life_fnc_retrieveGenerator,"",0,false,false,"",
' _generator = nearestObjects[getPos player,["Land_Portable_generator_F"],8] select 0; !isNil "_generator" && !isNil {(_generator getVariable "item")}'];
[[_portGenerator],"TON_fnc_portGenerator",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.