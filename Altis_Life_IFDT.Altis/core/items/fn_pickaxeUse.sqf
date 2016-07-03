/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cryptonat
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 100): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 100): {_mine = "ironore"; _val = 2;};
	case (player distance (getMarkerPos "salt_1") < 100) : {_mine = "salt"; _val = 4;};
	case (player distance (getMarkerPos "sand_1") < 100) : {_mine = "sand"; _val = 5;};
	case (player distance (getMarkerPos "diamond_1") < 100): {_mine = "diamond"; _val = 1;};
	case (player distance (getMarkerPos "oil_1") < 25) : {_mine = "oilu"; _val = 1; life_isOil = true;};
	case (player distance (getMarkerPos "oil_2") < 25) : {_mine = "oilu"; _val = 1; life_isOil = true;};
	case (player distance (getMarkerPos "rock_1") < 100): {_mine = "rock"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};
if(life_inv_pickaxe == 0 && !life_isOil) exitWith {hint "You can't mine without a pickaxe. You can't use that chisel of a chin either you sexy devil"};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;