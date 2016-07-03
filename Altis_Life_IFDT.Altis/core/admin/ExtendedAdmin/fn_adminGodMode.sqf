/**
*	godMode(BOOLEAN enable)
*
*/

private ["_enable"];
_enable = _this select 0;
_player = vehicle player;
_player allowDamage _enable;

//Hint + Infos
if( _enable ) then
{
	[[0,format["ADMIN ACTION: %1 has toggled God-Mode Off.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint "God-Mode Off";
}
else
{
	[[0,format["ADMIN ACTION: %1 has toggled God-Mode On.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint "God-Mode On";
};


