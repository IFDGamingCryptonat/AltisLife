#include <macro.h>
/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

_ret = [];
//Shop Title Name
ctrlSetText[3103,"Rebel Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
			_ret set[count _ret,["U_IG_Guerilla1_1",nil,5000]];
			_ret set[count _ret,["U_I_Wetsuit",nil,5000]];
			if(__GETC__(life_rebellvl) > 1) then
			{
			_ret set[count _ret,["U_I_GhillieSuit",nil,5000]];
			_ret set[count _ret,["U_IG_leader",nil,5000]];
			};
			if(__GETC__(life_rebellvl) > 2) then
			{
			_ret set[count _ret,["U_I_CombatUniform_shortsleeve",nil,5000]];
			};
			if(__GETC__(life_rebellvl) > 6) then
			{
			_ret set[count _ret,["U_I_OfficerUniform",nil,15000]];
			_ret set[count _ret,["U_BG_Guerrilla_6_1",nil,15000]];
			};
	};
	
	//Hats
	case 1:
	{
			_ret set[count _ret,["H_Booniehat_dgtl",nil,100]];
			_ret set[count _ret,["H_Booniehat_tan",nil,100]];
			_ret set[count _ret,["H_Cap_oli",nil,100]];
			_ret set[count _ret,["H_Cap_tan",nil,100]];
			_ret set[count _ret,["H_Cap_blk",nil,100]];
			_ret set[count _ret,["H_Cap_blk_CMMG",nil,100]];
			_ret set[count _ret,["H_Cap_blk_Raven",nil,100]];
			_ret set[count _ret,["H_Shemag_olive",nil,100]];
			_ret set[count _ret,["H_ShemagOpen_tan",nil,100]];
			_ret set[count _ret,["H_ShemagOpen_khk",nil,100]];
			_ret set[count _ret,["H_Bandanna_khk",nil,100]];
			_ret set[count _ret,["H_Bandanna_sgg",nil,100]];
			if(__GETC__(life_rebellvl) > 1) then
			{
			_ret set[count _ret,["H_Cap_headphones",nil,100]];
			_ret set[count _ret,["H_Watchcap_cbr",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_Watchcap_camo",nil,100]];
			_ret set[count _ret,["H_Watchcap_khk",nil,100]];
			_ret set[count _ret,["H_MilCap_dgtl",nil,100]];
			_ret set[count _ret,["H_HelmetCrew_I",nil,100]];
			_ret set[count _ret,["H_PilotHelmetHeli_I",nil,100]];
			};
			if(__GETC__(life_rebellvl) > 2) then
			{
			_ret set[count _ret,["H_HelmetIA_camo",nil,100]];
			_ret set[count _ret,["H_CrewHelmetHeli_B",nil,100]];
			_ret set[count _ret,["H_CrewHelmetHeli_I",nil,100]];
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
			["g_shades_black",nil,100],
			["g_shades_blue",nil,100],
			["g_sport_blackred",nil,100],
			["g_tactical_clear",nil,100],
			["g_lady_blue",nil,100],
			["g_lady_dark",nil,100],
			["g_lady_mirror",nil,100],
			["G_Balaclava_blk",nil,2000],
			["G_Balaclava_combat",nil,2000],
			["G_Balaclava_lowprofile",nil,2000],
			["G_Bandanna_aviator",nil,2000],
			["G_Bandanna_beast",nil,2000],
			["G_Bandanna_blk",nil,2000],
			["G_Bandanna_oli",nil,2000],
			["G_Bandanna_shades",nil,2000],
			["G_Bandanna_sport",nil,2000],
			["G_Bandanna_tan",nil,2000],
			["G_Goggles_VR",nil,2000],
			["G_I_Diving",nil,2000],
			["g_lady_red",nil,100]
	];
	};
	
	//Vest
	case 3:
	{
			_ret set[count _ret,["V_Rangemaster_belt",nil,5000]];
			_ret set[count _ret,["V_RebreatherIA",nil,7500]];
			_ret set[count _ret,["V_BandollierB_blk",nil,7500]];
			_ret set[count _ret,["V_BandollierB_cbr",nil,7500]];
			_ret set[count _ret,["V_BandollierB_khk",nil,7500]];
			_ret set[count _ret,["V_BandollierB_oli",nil,7500]];
			_ret set[count _ret,["V_HarnessO_brn",nil,10000]];
			_ret set[count _ret,["V_HarnessO_gry",nil,10000]];
			_ret set[count _ret,["V_HarnessOSpec_brn",nil,10000]];
			_ret set[count _ret,["V_HarnessOSpec_gry",nil,10000]];
			if(__GETC__(life_rebellvl) > 1) then
			{
			_ret set[count _ret,["V_TacVest_blk",nil,12500]];
			_ret set[count _ret,["V_TacVest_brn",nil,12500]];
			_ret set[count _ret,["V_TacVest_camo",nil,12500]];
			_ret set[count _ret,["V_TacVest_oli",nil,12500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,12500]];
			_ret set[count _ret,["V_Chestrig_blk",nil,15000]];
			_ret set[count _ret,["V_Chestrig_khk",nil,15000]];
			_ret set[count _ret,["V_Chestrig_oli",nil,15000]];
			_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,20000]];
			};
			if(__GETC__(life_rebellvl) > 2) then
			{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,20000]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,20000]];
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,20000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,20000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,20000]];
			_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,20000]];
			_ret set[count _ret,["V_HarnessOGL_brn",nil,100000]];
			};
	};
	
	//Backpacks
	case 4:
	{
	_ret = 
	[
			["B_AssaultPack_blk",nil,2500],
			["B_AssaultPack_cbr",nil,2500],
			["B_AssaultPack_khk",nil,2500],
			["B_AssaultPack_sgg",nil,2500],
			["B_AssaultPack_rgr",nil,2500],
			["B_FieldPack_cbr",nil,3500],
			["B_FieldPack_blk",nil,3500],
			["B_Kitbag_mcamo",nil,5000],
			["B_Kitbag_sgg",nil,5000],
			["B_Bergen_mcamo",nil,7500],
			["B_Bergen_blk",nil,7500],
			["B_Bergen_sgg",nil,7500],
			["B_Carryall_mcamo",nil,10000],
			["B_Carryall_oucamo",nil,10000],
			["B_Carryall_oli",nil,10000],
			["B_Carryall_khk",nil,10000],
			["B_Parachute",nil,2500]
	];
	};
};

_ret;