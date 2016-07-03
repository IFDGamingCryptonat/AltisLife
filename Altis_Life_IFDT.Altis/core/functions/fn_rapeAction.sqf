/*
	File: fn_rapeAction.sqf
	Author: Cryptonat
	
	Description:
	Rapes the target.
*/
private["_target"];
_target = cursorTarget;

if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 3) exitWith {};
if(_target getVariable["raped",false]) exitWith {titleText[format["This target was recently raped... Easy killer.",_target],"PLAIN"];};


[[player],"life_fnc_beingRaped",_target,false] spawn life_fnc_MP;
titleText[format["You have started to rape %1.",name _target],"PLAIN"];
[[getPlayerUID player,name player, "261"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
_target setVariable["raped",TRUE,TRUE];
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _target);
_obj setPosATL (getPosATL _target);
player attachTo [_obj,[0,0,-0.2]];
[[player,"AdvePercMstpSnonWrflDnon_godown"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
sleep 6;
deleteVehicle _obj;
[[player,"AmovPpneMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
/*sleep 30;
_target setVariable["raped",FALSE,TRUE];
*/

