/*
	File: fn_sleepbagBrown.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: Cavliere
	
	Description:
	Creates a brown sleeping bag and places it.
*/
private["_position","_sleepbagBrown"];
_sleepbagBrown = "Land_Sleeping_bag_brown_F" createVehicle [0,0,0];
_sleepbagBrown attachTo[player,[0,3,0]];
_sleepbagBrown setDir 90;
_sleepbagBrown setVariable["item","sleepbrownDeployed",true];

life_action_sleepbagBrownDeploy = player addAction["Place Brown Sleeping Bag",{if(!isNull life_sleepbagbrown) then {detach life_sleepbagBrown; life_sleepbagBrown = ObjNull;}; player removeAction life_action_sleepbagBrownDeploy; life_action_sleepbagBrownDeploy = nil;},"",999,false,false,"",'!isNull life_sleepbagbrown'];
life_sleepbagbrown = _sleepbagBrown;
waitUntil {isNull life_sleepbagBrown};
if(!isNil "life_action_sleepbagBrownDeploy") then {player removeAction life_action_sleepbagBrownDeploy;};
if(isNull _sleepbagBrown) exitWith {life_sleepbagBrown = ObjNull;};
_sleepbagBrown setPos [(getPos _sleepbagBrown select 0),(getPos _sleepbagBrown select 1),0];
_sleepbagBrown setDamage 1;
life_action_sleepbagBrownPickup = player addAction["Retrieve Brown Sleeping Bag",life_fnc_retrieveSleepbagBrown,"",0,false,false,"",
' _sleepbrown = nearestObjects[getPos player,["Land_Sleeping_bag_brown_F"],8] select 0; !isNil "_sleepbrown" && !isNil {(_sleepbrown getVariable "item")}'];
[[_sleepbagBrown],"TON_fnc_sleepbagBrown",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.