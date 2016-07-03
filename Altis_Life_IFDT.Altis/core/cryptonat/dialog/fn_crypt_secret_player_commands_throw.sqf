#include <macro.h>
/*
	File: fn_crypt_secret_player_commands_throw.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha - Player Commands - Throw commands
*/

private ["_unit","_command","_aboveUnit","_crush"];

_unit = _this select 0;
_command = _this select 1;
_unitPOS = getPOS _unit;

switch (_command) do
{
	case 0 : {_vel = velocity _unit;
				_dir = direction _unit;
				_speed = 500;
				_unit setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
			}; //throw forward
	case 1 : {_unit setVelocity [0,0,1000];}; //fly high
};

			