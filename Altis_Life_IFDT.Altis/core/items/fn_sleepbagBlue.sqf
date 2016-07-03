/*
	File: fn_sleepbagBlue.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a blue sleeping bag and places it.
*/
private["_position","_sleepbagBlue"];
_sleepbagBlue = "Land_Sleeping_bag_blue_F" createVehicle [0,0,0];
_sleepbagBlue attachTo[player,[0,3,0]];
_sleepbagBlue setDir 90;
_sleepbagBlue setVariable["item","sleepblueDeployed",true];

life_action_sleepbagBlueDeploy = player addAction["Place Blue Sleeping Bag",{if(!isNull life_sleepbagblue) then {detach life_sleepbagBlue; life_sleepbagBlue = ObjNull;}; player removeAction life_action_sleepbagBlueDeploy; life_action_sleepbagBlueDeploy = nil;},"",999,false,false,"",'!isNull life_sleepbagblue'];
life_sleepbagblue = _sleepbagBlue;
waitUntil {isNull life_sleepbagBlue};
if(!isNil "life_action_sleepbagBlueDeploy") then {player removeAction life_action_sleepbagBlueDeploy;};
if(isNull _sleepbagBlue) exitWith {life_sleepbagBlue = ObjNull;};
_sleepbagBlue setPos [(getPos _sleepbagBlue select 0),(getPos _sleepbagBlue select 1),0];
_sleepbagBlue setDamage 1;
life_action_sleepbagBluePickup = player addAction["Retrieve Blue Sleeping Bag",life_fnc_retrieveSleepbagBlue,"",0,false,false,"",
' _sleepblue = nearestObjects[getPos player,["Land_Sleeping_bag_blue_F"],8] select 0; !isNil "_sleepblue" && !isNil {(_sleepblue getVariable "item")}'];
[[_sleepbagBlue],"TON_fnc_sleepbagBlue",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.