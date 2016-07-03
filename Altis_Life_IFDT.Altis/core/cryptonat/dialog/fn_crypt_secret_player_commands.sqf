#include <macro.h>
/*
	File: fn_crypt_secret_player_commands.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha - Player Commands
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};
if(getPlayerUID player in ["*****","*****"]) then {} else {closeDialog 0;};

private ["_unit","_command","_aboveUnit","_crush","_vel","_dir","_speed","_unitPOS"];

//_unit = cursorTarget;
_unit = lbData[4060,lbCurSel (4060)];
_unit = call compile format["%1", _unit];

_unitPOS = getPOS _unit;
_command = _this select 0;


switch (_command) do
{
	case 0 : {_unit setDammage 1;}; //kill
	case 1 : {_boom = "Bo_Mk82" createVehicle _unitPOS; _boom setVelocity [0,0,-1000]; sleep 3; deleteVehicle _boom;}; //Explode
	case 2 : {	_aboveUnit = getPOS _unit;
				_crush = "B_Truck_01_covered_F" createVehicle [0,0,1000];
				_crush attachTo[_unit,[0,0,25]];
				detach _crush;
				_crush setVelocity [0,0,-10];
				sleep 3;
				deleteVehicle _crush;
			}; //crush
	case 3 : {_case = 0; [[_unit,_case],"crypt_fnc_crypt_secret_player_commands_throw",_unit,TRUE] spawn life_fnc_MP;}; // Throw
	case 4 : {_case = 1; [[_unit,_case],"crypt_fnc_crypt_secret_player_commands_throw",_unit,TRUE] spawn life_fnc_MP;}; //Fly High
};