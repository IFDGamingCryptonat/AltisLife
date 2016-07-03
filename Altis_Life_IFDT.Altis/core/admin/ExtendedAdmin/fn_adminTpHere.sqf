private["_unit"];
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};


hint format ["Teleporting %1", _unit];
			_unit attachTo [vehicle player, [2, 2, 0]];
			sleep 0.25;
			detach _unit;
[[0,format["ADMIN ACTION: %1 has been teleported to %2", name _unit, name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;