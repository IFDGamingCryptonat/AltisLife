#include <macro.h>
/*
	File: fn_crypt_secret_vehicle_damage.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha - Vehicle Damage activator
*/


private ["_veh","_type","_class"];

_veh = _this select 0;
_class = _this select 1;
_part = _this select 2;

_veh setHit [getText(configFile >> "cfgVehicles" >> _class >> "HitPoints" >> _part >> "name"),1];