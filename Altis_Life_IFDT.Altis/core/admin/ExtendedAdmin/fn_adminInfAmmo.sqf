/**
*	Inf Ammo(BOOLEAN enable)
*
*/

private ["_enable"];
_enable = _this select 0;

//Hint + Infos
if( _enable ) then
{
	[[0,format["ADMIN ACTION: %1 has toggled Inf. Ammo Off.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint "Inf. Ammo Off";
	life_infAmmo = false;
}
else
{
	[[0,format["ADMIN ACTION: %1 has toggled Inf. Ammo On.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint "Inf. Ammo On";
	life_infAmmo = true;
};

while {life_infAmmo} do 
{
	vehicle player setfuel 1;
	vehicle player setvehicleammo 1;
	sleep 0.001;
};
