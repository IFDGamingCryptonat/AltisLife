/*
	File: fn_revivePlayer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the revive process on the player.
*/
private["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_target = lbData[1500,lbCurSel (1500)];
_target = call compile format["%1", _target];
if(isNull _target) exitWith {}; //DAFUQ?@!%$!R?EFFD?TGSF?HBS?DHBFNFD?YHDGN?D?FJH

_revivable = _target getVariable["Revive",FALSE];
if(_revivable) exitWith {};
if(_target getVariable ["Reviving",ObjNull] == player) exitWith {hint "Someone else is already reviving this person";};

//Fetch their name so we can shout it.
_targetName = _target getVariable["name","Unknown"];
_title = format["Reviving %1",_targetName];

_target setVariable["Reviving",player,TRUE];

if(_target getVariable ["Reviving",ObjNull] != player) exitWith {hint "Someone else is already reviving this person"};
_target setVariable["Reviving",NIL,TRUE];
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if(_target getVariable["Revive",FALSE]) exitWith {hint "This person either respawned or was already revived."};

_target setVariable["Revive",TRUE,TRUE];
[[name player],"life_fnc_adminRevived",_target,FALSE] spawn life_fnc_MP;

sleep 0.6;
player reveal _target;