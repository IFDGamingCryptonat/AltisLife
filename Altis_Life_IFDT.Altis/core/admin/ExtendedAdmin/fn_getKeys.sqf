/*
=================
Gives key to admin
By: Cryptonat


=================
*/
private["_unit","_vehicle"];
_vehicle = cursorTarget;
_unit = player;

[[_vehicle,_unit,name player], "clientGetKey",_unit,false] spawn life_fnc_MP;