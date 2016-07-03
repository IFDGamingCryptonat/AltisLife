private["_unit","_admin"];
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};
//if(isNull _unit) exitWith {};

hint format ["Teleporting to %1", _unit];
			_admin = vehicle player;
			_admin attachTo [vehicle _unit, [2, 2, 0]];
			sleep 0.25;
			detach _admin;
[[0,format["ADMIN ACTION: %2 has teleported to %1.", name _unit, name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;