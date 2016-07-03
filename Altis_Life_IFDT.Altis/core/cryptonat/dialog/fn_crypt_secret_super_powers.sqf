#include <macro.h>
/*
	File: fn_crypt_secret_super_powers.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha - Super Powers
*/

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};
if(getPlayerUID player in ["****","****"]) then {} else {closeDialog 0;};

private ["_enable"];
_enable = _this select 0;
_player = player;


//Hint + Infos
if( _enable ) then
{
	crypt_mutherfukin_super_powers = _enable;
	hint "Super Powers Enabled"
}
else
{
	crypt_mutherfukin_super_powers = _enable;
	hint "Super Powers Disabled"
};


