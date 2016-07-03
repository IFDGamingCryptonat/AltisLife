/*
	File: fn_shovelUse.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cryptonat
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val","_dice","_extra","_cash"];
switch (true) do
{
	case (player distance (getMarkerPos "graveyard_1") < 20) : {_mine = "stolenJewelry"; _val = 1;};
	case (player distance (getMarkerPos "graveyard_2") < 20) : {_mine = "stolenJewelry"; _val = 1;};
	case (player distance (getMarkerPos "graveyard_3") < 20) : {_mine = "stolenJewelry"; _val = 1;};
	case (player distance (getMarkerPos "graveyard_4") < 20) : {_mine = "stolenJewelry"; _val = 1;};
	case (player distance (getMarkerPos "graveyard_5") < 20) : {_mine = "stolenJewelry"; _val = 1;};
	case (player distance (getMarkerPos "graveyard_6") < 20) : {_mine = "stolenJewelry"; _val = 1;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "You are not near a graveyard."};
if(vehicle player != player) exitWith {hint "You cannot rob graves from a vehicle!";};
if(life_inv_shovel == 0) exitWith {hint "You can't dig without a shovel. You can't use that chisel of a chin either you sexy devil"};

//random chance for extra
_dice = random(100);
_extra = round(random(3));
if(_dice < 20) then {
	_val = _val + _extra;
	};

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
	titleText[format["You have dug up %2 %1",_itemName,_diff],"PLAIN"];
	_dice = random(100);
	_cash = round(random(600));
	if(_dice < 11) then {
		life_cash = life_cash + _cash;
		hint format["You have also found $%1 in the grave!",[_cash] call life_fnc_numberText];
		};
	
};

life_action_inUse = false;