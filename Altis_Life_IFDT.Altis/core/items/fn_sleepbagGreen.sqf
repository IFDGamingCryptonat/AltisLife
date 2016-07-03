/*
	File: fn_sleepbagGreen.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a green sleeping bag and places it.
*/
private["_position","_sleepbagGreen"];
_sleepbagGreen = "Land_Sleeping_bag_F" createVehicle [0,0,0];
_sleepbagGreen attachTo[player,[0,3,0]];
_sleepbagGreen setDir 90;
_sleepbagGreen setVariable["item","sleepgreenDeployed",true];

life_action_sleepbagGreenDeploy = player addAction["Place Green Sleeping Bag",{if(!isNull life_sleepbaggreen) then {detach life_sleepbagGreen; life_sleepbagGreen = ObjNull;}; player removeAction life_action_sleepbagGreenDeploy; life_action_sleepbagGreenDeploy = nil;},"",999,false,false,"",'!isNull life_sleepbaggreen'];
life_sleepbaggreen = _sleepbagGreen;
waitUntil {isNull life_sleepbagGreen};
if(!isNil "life_action_sleepbagGreenDeploy") then {player removeAction life_action_sleepbagGreenDeploy;};
if(isNull _sleepbagGreen) exitWith {life_sleepbagGreen = ObjNull;};
_sleepbagGreen setPos [(getPos _sleepbagGreen select 0),(getPos _sleepbagGreen select 1),0];
_sleepbagGreen setDamage 1;
life_action_sleepbagGreenPickup = player addAction["Retrieve Green Sleeping Bag",life_fnc_retrieveSleepbagGreen,"",0,false,false,"",
' _sleepgreen = nearestObjects[getPos player,["Land_Sleeping_bag_F"],8] select 0; !isNil "_sleepgreen" && !isNil {(_sleepgreen getVariable "item")}'];
[[_sleepbagGreen],"TON_fnc_sleepbagGreen",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.