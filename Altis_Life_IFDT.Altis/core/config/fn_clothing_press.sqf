/*
	File: fn_clothing_kart.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bobby's Kart Racing Outfits
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Kart Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Journalist",nil,5000],
			["U_NikosAgedBody","Stylin'",5000]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_Cap_press",nil,100]
		];
	};

	//Glasses
	case 2:
	{
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
			["g_lady_red",nil,100]
		];
	};

	//Vest
	case 3:
	{
		[
			["V_Press_F",nil,10000]
		];
	};

	//Backpacks
	case 4:
	{
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
			["B_Carryall_khk",nil,10000]
		];
	};
};