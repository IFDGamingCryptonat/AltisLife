/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_redwhite","Hello Kitty",250],
			["U_C_Poloshirt_blue","Poloshirt Blue",500],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",500],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",500],
			["U_C_Poloshirt_stripped","Poloshirt stripped",500],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",500],
			["U_C_Poor_2","Rag tagged clothes",500],
			["U_IG_Guerilla2_1","The Protagonist",1000],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",1000],
			["U_IG_Guerilla3_1","Brown Jacket & Pants",1000],
			["U_IG_Guerilla2_3","The Outback Wrangler",1000],
			["U_C_HunterBody_grn","The Hunters Look",1000],
			["U_C_WorkerCoveralls","Mechanic Coveralls",1000],
			["U_OrestesBody","Surfing On Land",1000],
			["U_NikosAgedBody","Stylin'",4000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_khk",nil,100],
			["H_Booniehat_indp",nil,100],
			["H_Booniehat_mcamo",nil,100],
			["H_Booniehat_grn",nil,100],
			["H_Booniehat_tan",nil,100],
			["H_Booniehat_dirty",nil,100],
			["H_Booniehat_khk_hs",nil,100],
			["H_Hat_blue",nil,100],
			["H_Hat_brown",nil,100],
			["H_Hat_camo",nil,100],
			["H_Hat_grey",nil,100],
			["H_Hat_checker",nil,100],
			["H_Hat_tan",nil,100],
			["H_Watchcap_blk",nil,100],
			["H_Watchcap_khk",nil,100],
			["H_Watchcap_camo",nil,100],
			["H_Watchcap_sgg",nil,100],
			["H_TurbanO_blk",nil,100],
			["H_StrawHat",nil,100],
			["H_StrawHat_dark",nil,100],
			["H_Cap_red",nil,100],
			["H_Cap_blu",nil,100],
			["H_Cap_oli",nil,100],
			["H_Cap_headphones",nil,100],
			["H_Cap_tan",nil,100],
			["H_Cap_blk",nil,100],
			["H_Cap_grn",nil,100],
			["H_Cap_grn_BI",nil,100],
			["H_Cap_blk_Raven",nil,100],
			["H_Cap_blk_ION",nil,100],
			["H_Cap_oli_hs",nil,100],
			["H_Cap_blk_CMMG",nil,100],
			["H_Cap_brn_SPECOPS",nil,100],
			["H_Cap_tan_specops_US",nil,100],
			["H_Cap_khaki_specops_UK",nil,100],
			["H_Bandanna_surfer",nil,100],
			["H_Bandanna_khk",nil,100],
			["H_Bandanna_khk_hs",nil,100],
			["H_Bandanna_cbr",nil,100],
			["H_Bandanna_sgg",nil,100],
			["H_Bandanna_gry",nil,100],
			["H_Bandanna_camo",nil,100],
			["H_Bandanna_mcamo",nil,100],
			["H_MilCap_ocamo",nil,100],
			["H_MilCap_mcamo",nil,100],
			["H_MilCap_oucamo",nil,100],
			["H_MilCap_rucamo",nil,100],
			["H_MilCap_gry",nil,100],
			["H_MilCap_dgtl",nil,100],
			["H_MilCap_blue",nil,100],
			["H_BandMask_blk",nil,100]
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
			["V_Rangemaster_belt",nil,5000],
			["V_BandollierB_blk",nil,7500],
			["V_BandollierB_cbr",nil,7500],
			["V_BandollierB_khk",nil,7500],
			["V_BandollierB_oli",nil,7500],
			["V_BandollierB_rgr",nil,7500],
			["V_HarnessO_brn",nil,10000],
			["V_HarnessO_gry",nil,10000],
			["V_HarnessOSpec_brn",nil,10000],
			["V_HarnessOSpec_gry",nil,10000],
			["V_Chestrig_blk",nil,15000],
			["V_Chestrig_khk",nil,15000],
			["V_Chestrig_oli",nil,15000],
			["V_Chestrig_rgr",nil,15000]
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
			["B_Carryall_khk",nil,10000],
			["B_Parachute",nil,2500]
		];
	};
};