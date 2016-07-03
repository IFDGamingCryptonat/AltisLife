/*
	File: fn_handleDamage.sqf
	Author: Cryptonat
	
	Description:
	EMP TEST
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;


if(_projectile getVariable["empWeapon",TRUE]) then {
	private["_vehicle"];
	if(vehicle _unit != _unit) exitWith {};
	_damage = false;
	_vehicle = vehicle _unit;
	[_vehicle] spawn crypt_fnc_EMP;
};

_damage;