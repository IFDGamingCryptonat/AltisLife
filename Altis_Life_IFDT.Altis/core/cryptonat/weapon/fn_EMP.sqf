/*
	fn_emp.sqf
	Cryptonat
*/

private["_vehicle"];
_vehicle =  [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
if((_vehicle getVariable ["crypt_emp", true])) exitWith {};
_vehicle setVariable["crypt_emp",true,true];
[[0,format["EMP 1: %1",_vehicle]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
if(_vehicle isKindOf "Car") then {
	if(local _vehicle) then {
	[[0,format["EMP 2: %1",_vehicle]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 1];
		sleep 60;
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 0];
	};
};
if(_vehicle isKindOf "Air") then {
	if(local _vehicle) then {
	[[0,format["EMP 2: %1",_vehicle]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 1];
		sleep 60;
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 0];
	}
};
if(_vehicle isKindOf "Ship") then {
	if(local _vehicle) then {
	[[0,format["EMP 2: %1",_vehicle]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 1];
		sleep 60;
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 0];
	}
};
_vehicle setVariable["crypt_emp",false,true];