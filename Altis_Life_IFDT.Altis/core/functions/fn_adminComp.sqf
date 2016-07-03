/*
	@Version: 3.1
	@Author: Cryptonat
	@Edited: 2/18/14
*/
/*private ["_val","_unit"];

//if (life_adminlevel < 1) exitWith {};

_val = parseNumber (ctrlText 2904);
_unit = call compile format ["%1", (lbData [2902, (lbCurSel 2902)])];

if (isNull _unit) exitWith {};
if ((lbCurSel 2902) == -1) exitWith { hint "Please select a player." };
if (isNil "_unit") exitWith { hint "The player selected doesn't seem to exist?" };
if (_val < 0) exitWith { hint "Please input an amount" };
if (!([str(_val)] call fnc_isnumber)) exitWith { hint "That isn't in an actual number format." };

[[_val,name player],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
hint format ["You compensated %1 with $%2", name _unit, [_val] call life_fnc_formatMoney];


//[[_val,name player],""clientWireTransfer"",_unit,false] spawn life_fnc_MP;
//[[_val, name player], "life_fnc_bank_deposit", _unit, false] spawn life_fnc_MP;*/

private["_val","_unit"];
	_val = parseNumber(ctrlText 1400);
	_unit = lbData[1500,lbCurSel (1500)];
	_unit = call compile format["%1", _unit];
	if(isNull _unit) exitWith {};
	if((lbCurSel 1500) == -1) exitWith {hint "You need to select someone to compensate"};
	if(isNil "_unit") exitWith {hint "The player selected doesn't seem to exist?"};
	if(_val < 0) exitwith {hint "Input a value"};
	if(!([str(_val)] call fnc_isnumber)) exitWith {hint "That isn't in an actual number format."};

	
	[[_val,name player],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
	hint format["You compensated %1 with $%2",_unit, [_val] call life_fnc_numberText];
