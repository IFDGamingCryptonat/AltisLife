#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Cock"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Competitor","Cop Uniform",500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Officer Uniform",500]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Swat Uniform",1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,2500]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Cap_blk_ION",nil,100]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,100]];
			_ret set[count _ret,["H_Cap_police",nil,100]];	
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_HelmetB_black",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,100]];
		};

		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["H_CrewHelmetHeli_B",nil,100]];
			_ret set[count _ret,["H_CrewHelmetHeli_O",nil,100]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["g_combat",nil,100],
			["g_lowprofile",nil,100],
			["g_shades_green",nil,100],
			["g_shades_red",nil,100],
			["g_spectacles_tinted",nil,100],
			["g_sport_blackwhite",nil,100],
			["g_sport_blackyellow",nil,100],
			["g_sport_checkered",nil,100],
			["g_sport_red",nil,100],
			["g_squares",nil,100],
			["g_diving",nil,100],
			["g_shades_black",nil,100],
			["g_shades_blue",nil,100],
			["g_sport_blackred",nil,100],
			["g_tactical_clear",nil,100],
			["g_lady_blue",nil,100],
			["g_lady_dark",nil,100],
			["g_lady_mirror",nil,100],
			["g_lady_red",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,12500]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_RebreatherB",nil,5000]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,20000]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_AssaultPack_blk",nil,2500]];
		_ret set[count _ret,["B_AssaultPack_cbr",nil,2500]];
		_ret set[count _ret,["B_AssaultPack_khk",nil,2500]];
		_ret set[count _ret,["B_AssaultPack_sgg",nil,2500]];
		_ret set[count _ret,["B_AssaultPack_rgr",nil,2500]];
		_ret set[count _ret,["B_FieldPack_cbr",nil,3500]];
		_ret set[count _ret,["B_FieldPack_blk",nil,3500]];
		_ret set[count _ret,["B_Kitbag_mcamo",nil,5000]];
		_ret set[count _ret,["B_Kitbag_sgg",nil,5000]];
		_ret set[count _ret,["B_Bergen_mcamo",nil,7500]];
		_ret set[count _ret,["B_Bergen_blk",nil,7500]];
		_ret set[count _ret,["B_Bergen_sgg",nil,7500]];
		_ret set[count _ret,["B_Carryall_mcamo",nil,10000]];
		_ret set[count _ret,["B_Carryall_oucamo",nil,10000]];
		_ret set[count _ret,["B_Carryall_oli",nil,10000]];
		_ret set[count _ret,["B_Carryall_khk",nil,10000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["B_Parachute",nil,2500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,50000]];
		};
	};
};

_ret;