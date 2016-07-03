/*
	File: fn_crypt_secret_adminSmite.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha
*/
private["_type","_power","_target","_center","_group","_mark","_markSpot","_logic","_bolt","_lighting","_light"];
_target = lbData[4060,lbCurSel (4060)];
_target = call compile format["%1", _target]; 
_center = createCenter sideLogic;  
_group = createGroup _center;
_logic = _group createUnit ["LOGIC",[0,0,0], [], 0, ""];
_logic setPosASL (getPosASL _target);  

[_logic, nil, true] call BIS_fnc_moduleLightning;
[[_logic, nil, true],"BIS_fnc_moduleLightning",_target,TRUE] spawn life_fnc_MP;
//[[0,format["ADMIN ACTION: %1 smites %2.",name player, name _target]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
_bolt = createvehicle ["LightningBolt", _target, [], 0, "can_collide"];
				_bolt setVelocity [0, 0, -10];
				_lighting = "lightning_F" createvehicle _target;
				_lighting setdir random 360;
				_lighting setpos _target;
				_light = "#lightpoint" createvehicle _target;
				_light setpos _target;
				_light setLightBrightness 30;
				_light setLightAmbient [0.5, 0.5, 1];
				_light setlightcolor [1, 1, 2];
				sleep (0.2 + random 0.1);
				deletevehicle _bolt;
				deletevehicle _light;
				deletevehicle _lighting;
				deleteVehicle _logic;