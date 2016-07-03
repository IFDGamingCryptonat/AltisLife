#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_ret"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_ret = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","ANFU","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		_ret = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Zaros","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Neochori","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case independent: 
	{
		_ret = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Medical","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

//Besson Test
if ((getPlayerUID player) in ["76561198044750339","0","0"]) then {
	_ret = _ret + [["bess_spawn_1","Besson Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Crypt
if ((getPlayerUID player) in ["76561198010280574","0","0"]) then {
	_ret = _ret + [["crypt_spawn","Crypt Spawn","\a3\ui_f\data\map\MapControl\bunker_ca.paa"]];
};
//Boomer
if ((getPlayerUID player) in ["76561198027400772","0","0"]) then {
	_ret = _ret + [["boom_spawn","Boomer Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};

//donator spawn
if(__GETC__(life_donator) > 0) then {
	_ret = _ret + [["don_spawn_1","Donator Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};		
//rebel HQ
if((__GETC__(life_rebellvl) > 0 && playerside == civilian) or __GETC__(life_adminlevel) > 0) then {
	_ret = _ret + [["reb_spawn_1","Rebel HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]];
};
//rebel outpost
if((__GETC__(life_rebellvl) > 0 && playerside == civilian) or __GETC__(life_adminlevel) > 0) then {
	_ret = _ret + [["reb_spawn_2","Rebel Outpost","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]];
};
//admin spawn
if(__GETC__(life_adminlevel) > 0) then {
	_ret = _ret + [["admin_spawn_1","Admin Spawn","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
};
//Specialist
if ((getPlayerUID player) in ["76561198121529183","0","0"]) then {
	_ret = _ret + [["spec_spawn","Specialist House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Jerry
if ((getPlayerUID player) in ["76561198056803150","0","0"]) then {
	_ret = _ret + [["jerry_spawn","Jerry's House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Zander
if ((getPlayerUID player) in ["76561198028048360","0","0"]) then {
	_ret = _ret + [["zander_spawn","Zander Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Jobz
if ((getPlayerUID player) in ["76561197990530849","0","0"]) then {
	_ret = _ret + [["jobz_spawn","The Jobz Headquarters","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Zuuloo
if ((getPlayerUID player) in ["76561198059228939","0","0"]) then {
	_ret = _ret + [["zul_spawn","The Zuuloo Compound","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Croadye
if ((getPlayerUID player) in ["76561198062709983","0","0"]) then {
	_ret = _ret + [["croad_spawn","Croadye's Beach Resort","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Jett
if ((getPlayerUID player) in ["76561198080497161","0","0"]) then {
	_ret = _ret + [["jett_spawn","Jeff's Bin Laden Resort Party","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//D12 = STUPID FUCKS
if ((getPlayerUID player) in ["76561198090403931","76561198127847959","76561198128041986","76561198005539996","76561198132569126","76561198132594089","76561198044750339"]) then {
	_ret = _ret + [["d12_spawn","D12 Gang Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Phillip
if ((getPlayerUID player) in ["76561198120989714","0","0"]) then {
	_ret = _ret + [["Phillip_spawn","Phillips House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Garret
if ((getPlayerUID player) in ["76561198123833416","0","0"]) then {
	_ret = _ret + [["garret_spawn","Garret's House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Aaron
if ((getPlayerUID player) in ["76561198062025925","0","0"]) then {
	_ret = _ret + [["aaron_spawn","Aaron's House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Tank_Cage
if ((getPlayerUID player) in ["76561198068289622","0","0"]) then {
	_ret = _ret + [["tank_spawn","Tank_Cage's House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Nolo
if ((getPlayerUID player) in ["76561198038285298","0","0"]) then {
	_ret = _ret + [["nolo_spawn","Nolo's House","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};
//Altis Cartel
if ((getPlayerUID player) in ["76561198062630353","76561198120239144","76561198123833416","76561197993644953","76561198118438372","76561197966765564","76561197975725990"]) then {
	_ret = _ret + [["ac_spawn","Altis Cartel Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
};


_ret;