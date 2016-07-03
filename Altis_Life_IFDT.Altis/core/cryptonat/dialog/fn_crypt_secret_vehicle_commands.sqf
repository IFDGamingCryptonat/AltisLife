#include <macro.h>
/*
	File: fn_crypt_secret_vehicle_commands.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha - Vehicle Commands
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};
if(getPlayerUID player in ["****","****"]) then {} else {closeDialog 0;};

private ["_veh","_type","_class","_command"];

_type = _this select 0;
_command = _this select 1;

_veh = missionNamespace getVariable [(lbData [4061,lbCurSel (4061)]),objNull];
_class = typeOf _veh;

switch (_type) do
{
	case 0 : //air
	{
		switch (_command) do
		{
		case 0 : {_part = "HitHRotor"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 1 : {_part = "HitVRotor"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;}; 
		case 2 : {_part = "HitEngine"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;}; 
		case 3 : {_part = "HitFuel"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;}; 
		case 4 : {_part = "HitHull"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 5 : {_part = "HitAvionics"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 6 : {if (true) exitWith {_veh setDammage 1};};
		};
	};
	case 1 : //car/boat
	{
		switch (_command) do
		{
		case 0 : {_part = "HitLFWheel"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 1 : {_part = "HitEngine"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;}; 
		case 2 : {_part = "HitFuel"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP; _part = "HitFuel2"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;}; 
		case 3 : {_part = "HitBody"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;}; 
		case 4 : {_part = "HitRFWheel"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 5 : {_part = "HitLBWheel"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 6 : {_part = "HitRBWheel"; [[_veh,_class,_part],"crypt_fnc_crypt_secret_vehicle_damage",TRUE,TRUE] spawn life_fnc_MP;};
		case 7 : {if (true) exitWith {_veh setDammage 1};};
		};
	};
};
