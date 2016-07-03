if((call life_adminlevel) < 1) exitWith {};

//_unit = cursorTarget;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];
if(isNull _unit) exitWith {}; //Not valid


hint format ["Healing %1", _unit];
_unit setdamage 0;