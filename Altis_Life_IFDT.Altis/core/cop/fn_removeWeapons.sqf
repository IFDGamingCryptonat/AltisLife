/*
	Author: Tobias 'Xetoxyc' Sittenauer

	File: fn_removeWeapons.sqf
*/

private["_cop"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(_cop == player) then {}; //WTF?

if(isNull _cop OR !(player getVariable["restrained",FALSE])) exitWith {}; //Error check?

player removeweapon (currentWeapon player);
player removeWeapon (primaryWeapon player);
player removeWeapon (secondaryWeapon player);
[[0,format["%1's weapons have been confiscated by %2", name player, name _cop]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;