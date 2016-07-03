/**
*	spawnVehicle()
*
*/

hint "Init Vehicle Spawn";

if((call life_adminlevel) < 1) exitWith {};

private["_unit", "_position", "_veh"];
disableSerialization;

_unit = lbData[1501,lbCurSel (1501)];

hint _unit;

if(isNil "_unit") exitWith {hint "a";};

//
_position = position player;

for "_i" from 5 to 1 step -1 do
{
	hint format ["In %1s vehicle will spawn.", _i];
	sleep 1;
};

//Spawn
_veh = _unit createVehicle (_position);
[[0,format["ADMIN ACTION: %1 has spawned vehicle: %2",name player, _unit]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

[_veh] call life_fnc_clearVehicleAmmo;
sleep 2;

hint format["Vehicle Spawned!\nID: %1", _unit];




