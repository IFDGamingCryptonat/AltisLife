#include <macro.h>
/*
	File: fn_crypt_secret_admin_menu.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};
if(getPlayerUID player in ["*****","*****"]) then {} else {closeDialog 0;};
private["_display","_plist","_pside","_vlist"];
disableSerialization;
waitUntil {!isNull (findDisplay 3900)};
_display = findDisplay 3900;
_plist = _display displayCtrl 4060;
_vlist = _display displayCtrl 4061;

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};
//Purge List
lbClear _plist;
{
	_pside = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; case independent : {"Medic"}; default {"?"};};
	_plist lbAdd format["%1 - %2", _x getVariable["realname",name _x],_pside];
	_plist lbSetdata [(lbSize _plist)-1,str(_x)];
} foreach playableUnits;

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};

//Purge List
lbClear _vlist;
{
	if (_x isKindOf"LandVehicle" or _x isKindOf "Air" or _x isKindOf "Ship") then {
	_vlist lbAdd format["%1 - %2 - %3",typeOf _x,_x getVariable "vehicle_info_owners",player distance _x];
	
        if (isNil "veh_ref_counter") then {veh_ref_counter = 0};
        veh_ref_counter = veh_ref_counter + 1;
        private ["_vehVarName"];
        _vehVarName = format["veh_ref_%1", veh_ref_counter];
        _x setVehicleVarName _vehVarName;
        missionNamespace setVariable [_vehVarName, _x];
	
	_vlist lbSetData [(lbSize _vlist)-1,(vehicleVarName _x)];
	};
} foreach vehicles;

