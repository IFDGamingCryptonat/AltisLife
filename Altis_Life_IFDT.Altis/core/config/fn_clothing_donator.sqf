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
ctrlSetText[3103,"Donator Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_redwhite","Hello Kitty",125],
			["U_C_Poloshirt_blue","Poloshirt Blue",250],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",250],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",250],
			["U_C_Poloshirt_stripped","Poloshirt stripped",250],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",250],
			["U_C_Poor_2","Rag tagged clothes",250],
			["U_IG_Guerilla2_1","The Protagonist",500],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",500],
			["U_IG_Guerilla3_1","Brown Jacket & Pants",500],
			["U_IG_Guerilla2_3","The Outback Wrangler",500],
			["U_C_HunterBody_grn","The Hunters Look",500],
			["U_C_WorkerCoveralls","Mechanic Coveralls",500],
			["U_OrestesBody","Surfing On Land",500],
			["U_NikosAgedBody","Stylin'",2000],
			["U_O_GhillieSuit",nil,2500],
			["U_O_SpecopsUniform_ocamo",nil,2500],
			["U_O_PilotCoveralls",nil,2500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_khk",nil,50],
			["H_Booniehat_indp",nil,50],
			["H_Booniehat_mcamo",nil,50],
			["H_Booniehat_grn",nil,50],
			["H_Booniehat_tan",nil,50],
			["H_Booniehat_dirty",nil,50],
			["H_Booniehat_dgtl",nil,50],
			["H_Booniehat_khk_hs",nil,50],
			["H_Hat_blue",nil,50],
			["H_Hat_brown",nil,50],
			["H_Hat_camo",nil,50],
			["H_Hat_grey",nil,50],
			["H_Hat_checker",nil,50],
			["H_Hat_tan",nil,50],
			["H_Watchcap_blk",nil,50],
			["H_Watchcap_khk",nil,50],
			["H_Watchcap_camo",nil,50],
			["H_Watchcap_sgg",nil,50],
			["H_TurbanO_blk",nil,50],
			["H_StrawHat",nil,50],
			["H_StrawHat_dark",nil,50],
			["H_Cap_red",nil,50],
			["H_Cap_blu",nil,50],
			["H_Cap_oli",nil,50],
			["H_Cap_headphones",nil,50],
			["H_Cap_tan",nil,50],
			["H_Cap_blk",nil,50],
			["H_Cap_grn",nil,50],
			["H_Cap_grn_BI",nil,50],
			["H_Cap_blk_Raven",nil,50],
			["H_Cap_blk_ION",nil,50],
			["H_Cap_oli_hs",nil,50],
			["H_Cap_blk_CMMG",nil,50],
			["H_Cap_brn_SPECOPS",nil,50],
			["H_Cap_tan_specops_US",nil,50],
			["H_Cap_khaki_specops_UK",nil,50],
			["H_Bandanna_surfer",nil,50],
			["H_Bandanna_khk",nil,50],
			["H_Bandanna_khk_hs",nil,50],
			["H_Bandanna_cbr",nil,50],
			["H_Bandanna_sgg",nil,50],
			["H_Bandanna_gry",nil,50],
			["H_Bandanna_camo",nil,50],
			["H_Bandanna_mcamo",nil,50],
			["H_MilCap_ocamo",nil,50],
			["H_MilCap_mcamo",nil,50],
			["H_MilCap_oucamo",nil,50],
			["H_MilCap_rucamo",nil,50],
			["H_MilCap_gry",nil,50],
			["H_MilCap_blue",nil,50],
			["H_BandMask_blk",nil,50],
			["H_HelmetB",nil,50],
			["H_HelmetB_camo",nil,50],
			["H_HelmetB_paint",nil,50],
			["H_HelmetB_light",nil,50],
			["H_HelmetB_plain_mcamo",nil,50],
			["H_HelmetB_plain_blk",nil,50],
			["H_HelmetSpecB",nil,50],
			["H_HelmetSpecB_paint1",nil,50],
			["H_HelmetSpecB_paint2",nil,50],
			["H_HelmetSpecB_blk",nil,50],
			["H_HelmetIA",nil,50],
			["H_HelmetIA_net",nil,50],
			["H_HelmetIA_camo",nil,50],
			["H_Helmet_Kerry",nil,50],
			["H_HelmetB_grass",nil,50],
			["H_HelmetB_snakeskin",nil,50],
			["H_HelmetB_desert",nil,50],
			["H_HelmetB_black",nil,50],
			["H_HelmetB_sand",nil,50],
			["H_HelmetCrew_B",nil,50],
			["H_HelmetCrew_O",nil,50],
			["H_HelmetCrew_I",nil,50],
			["H_HelmetO_ocamo",nil,50],
			["H_HelmetO_oucamo",nil,50],
			["H_HelmetLeaderO_oucamo",nil,50],
			["H_HelmetSpecO_ocamo",nil,50],
			["H_HelmetSpecO_blk",nil,50],
			["H_HelmetB_light_grass",nil,50],
			["H_HelmetB_light_snakeskin",nil,50],
			["H_HelmetB_light_desert",nil,50],
			["H_HelmetB_light_black",nil,50],
			["H_HelmetB_light_sand",nil,50],
			["H_PilotHelmetFighter_B",nil,50],
			["H_PilotHelmetFighter_O",nil,50],
			["H_PilotHelmetHeli_B",nil,50],
			["H_PilotHelmetHeli_O",nil,50],
			["H_CrewHelmetHeli_B",nil,50],
			["H_CrewHelmetHeli_O",nil,50]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["g_combat",nil,50],
			["g_lowprofile",nil,50],
			["g_shades_green",nil,50],
			["g_shades_red",nil,50],
			["g_spectacles_tinted",nil,50],
			["g_sport_blackwhite",nil,50],
			["g_sport_blackyellow",nil,50],
			["g_sport_checkered",nil,50],
			["g_sport_red",nil,50],
			["g_squares",nil,50],
			["g_diving",nil,50],
			["g_shades_black",nil,50],
			["g_shades_blue",nil,50],
			["g_sport_blackred",nil,50],
			["g_tactical_clear",nil,50],
			["g_lady_blue",nil,50],
			["g_lady_dark",nil,50],
			["g_lady_mirror",nil,50],
			["G_Balaclava_blk",nil,1000],
			["G_Balaclava_combat",nil,1000],
			["G_Balaclava_lowprofile",nil,1000],
			["G_Bandanna_aviator",nil,1000],
			["G_Bandanna_blk",nil,1000],
			["G_Bandanna_oli",nil,1000],
			["G_Bandanna_shades",nil,1000],
			["G_Bandanna_sport",nil,1000],
			["G_Bandanna_tan",nil,1000],
			["G_Goggles_VR",nil,1000],
			["G_I_Diving",nil,1000],
			["g_lady_red",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,2500],
			["V_BandollierB_blk",nil,3750],
			["V_BandollierB_cbr",nil,3750],
			["V_BandollierB_khk",nil,3750],
			["V_BandollierB_oli",nil,3750],
			["V_BandollierB_rgr",nil,3750],
			["V_HarnessO_brn",nil,5000],
			["V_HarnessO_gry",nil,5000],
			["V_HarnessOSpec_brn",nil,5000],
			["V_HarnessOSpec_gry",nil,5000],
			["V_TacVest_blk",nil,6250],
			["V_TacVest_brn",nil,6250],
			["V_TacVest_camo",nil,6250],
			["V_TacVest_khk",nil,6250],
			["V_TacVest_oli",nil,6250],
			["V_TacVestIR_blk",nil,6250],
			["V_Chestrig_blk",nil,7500],
			["V_Chestrig_khk",nil,7500],
			["V_Chestrig_oli",nil,7500],
			["V_Chestrig_rgr",nil,7500],
			["V_PlateCarrier3_rgr",nil,15000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,1250],
			["B_AssaultPack_cbr",nil,1250],
			["B_AssaultPack_khk",nil,1250],
			["B_AssaultPack_sgg",nil,1250],
			["B_AssaultPack_rgr",nil,1250],
			["B_FieldPack_cbr",nil,1750],
			["B_FieldPack_blk",nil,1750],
			["B_Kitbag_mcamo",nil,2500],
			["B_Kitbag_sgg",nil,2500],
			["B_Bergen_mcamo",nil,3750],
			["B_Bergen_blk",nil,3750],
			["B_Bergen_sgg",nil,3750],
			["B_Carryall_mcamo",nil,5000],
			["B_Carryall_oucamo",nil,5000],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};