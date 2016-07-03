#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/

/////////////////////////////////////////////////////////////////////////////////////////
// NUKE RELATED STUFF
/////////////////////////////////////////////////////////////////////////////////////////
mdh_nuke_destruction_zone	= 750;	// DESTRUCTION ZONE OF NUKE IN METERS, USE 0 TO DEACTIVATE
mdh_nuke_camshake			= 1;	// CAEMRASHAKE AT NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_ash				= 1;	// ASH AFTER NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_colorcorrection	= 1;	// COLLORCORRECTION AFTER NUKEDETONATION 1=ON, 0=OFF
nuke_detonate = false;
nuke_amount = 0;
/////////////////////////////////////////////////////////////////////////////////////////

life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;

life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;

life_roadcone = ObjNull;
life_roadbarrier = ObjNull;
life_cautiontape = ObjNull;
life_campfire = ObjNull;
life_sleepbaggreen = ObjNull;
life_sleepbagblue = ObjNull;
life_sleepbagbrown = ObjNull;
life_tentridge = ObjNull;
life_tentdome = ObjNull;
life_portgenerator = ObjNull;
life_bagfenceshort = ObjNull;
life_bagfencelong = ObjNull;
life_bagfenceround = ObjNull;
life_bagfencecorner = ObjNull;
life_bargate = ObjNull;
life_bagbunker = ObjNull;
life_cargod = false;
life_isOil = false;
life_siren2_active = false;
life_isAdmin = false;
crypt_mutherfukin_super_powers = false;

//Revive constant variables.
__CONST__(life_revive_cops,False); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,10000); //Fee for players to pay when revived.

//House Limit
life_houseLimit = 2; //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,50000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;
life_eat_burger = 40;
life_eat_sburger = 50;
life_eat_ffries = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,750);
__CONST__(life_impound_air,1500);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];

life_holster_time = 0;
life_holstered = false;
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 35000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 35000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 50000;
		life_paycheck = 1500;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","B_MRAP_01_F","O_MRAP_02_F","I_MRAP_03_F","B_Heli_Transport_01_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	
	"life_inv_shovel",
	"life_inv_stolenJewelry",
	"life_inv_ziptie",
	"life_inv_burger",
	"life_inv_sburger",
	"life_inv_ffries",
	"life_inv_cola",
	"life_inv_cshake",
	"life_inv_cabsav",
	"life_inv_merlot",
	"life_inv_shiraz",
	"life_inv_grenache",
	"life_inv_pinotnoir",
	"life_inv_chardonnay",
	"life_inv_souvblanc",
	"life_inv_semillon",
	"life_inv_riesling",
	"life_inv_guiness",
	"life_inv_bwheat",
	"life_inv_cblue",
	"life_inv_bmoon",
	"life_inv_sablager",
	"life_inv_vbitter",
	"life_inv_tnew",
	"life_inv_told",
	"life_inv_clager",
	"life_inv_cale",
	"life_inv_oempire",
	"life_inv_jaipur",
	"life_inv_spetersburg",
	"life_inv_hhoney",
	"life_inv_portstout",
	"life_inv_sbbitter",
	"life_inv_moonshine",
	"life_inv_scotch",
	"life_inv_whiskey",
	"life_inv_brandy",
	"life_inv_vodka",
	"life_inv_tequila",
	"life_inv_sake",
	"life_inv_whiterum",
	"life_inv_rum",
	"life_inv_gin",
	"life_inv_absinthe",
	"life_inv_aids",
	"life_inv_roadCone",
	"life_inv_roadBarrier",
	"life_inv_cautionTape",
	"life_inv_campFire",
	"life_inv_sleepbagGreen",
	"life_inv_sleepbagBlue",
	"life_inv_sleepbagBrown",
	"life_inv_tentRidge",
	"life_inv_tentDome",
	"life_inv_portGenerator",
	"life_inv_bagfenceShort",
	"life_inv_bagfenceLong",
	"life_inv_bagfenceRound",
	"life_inv_bagfenceCorner",
	"life_inv_barGate",
	"life_inv_bagBunker"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["lockpick",500],["stolenJewelry",1000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
        ["heroinu",500],
        ["heroinp",2500],
        ["salema",45],
        ["ornate",40],
        ["mackerel",175],
        ["tuna",700],
        ["mullet",250],
        ["catshark",300],
        ["rabbit",65],
        ["oilp",3900],
        ["turtle",3000],
        ["water",5],
        ["coffee",5],
        ["turtlesoup",1000],
        ["donuts",60],
        ["marijuana",1500],
        ["tbacon",25],
        ["lockpick",75],
        ["pickaxe",750],
        ["redgull",200],
        ["peach",55],
        ["cocaine",1000],
        ["cocainep",3000],
        ["diamond",750],
        ["diamondc",1800],
        ["iron_r",800],
        ["copper_r",800],
        ["salt_r",400],
        ["glass",400],
        ["fuelF",500],
        ["spikeStrip",500],
        ["cement",400],
		["goldbar",95000],
		["boltcutter",2500],
		["defusekit",750],
		["storagesmall",25000],
		["storagebig",50000],
        
		["shovel",1250],
		["stolenJewelry",300],
		["ziptie",350],
        ["burger", 65],
        ["sburger",75],
        ["ffries",55],
        ["cola",10],
        ["cshake",10],
        ["cabsav",10],
        ["merlot",10],
        ["shiraz",10],
        ["grenache",10],
        ["pinotnoir",10],
        ["chardonnay",10],
        ["souvblanc",10],
        ["semillon",10],
        ["riesling",10],
        ["guiness",10],
        ["bwheat",10],
        ["cblue",10],
        ["bmoon",10],
        ["sablager",10],
        ["vbitter",10],
        ["tnew",10],
        ["told",10],
        ["clager",10],
        ["cale",10],
        ["oempire",10],
        ["jaipur",10],
        ["spetersburg",10],
        ["hhoney",10],
        ["portstout",10],
        ["sbbitter",10],
        ["moonshine",10],
        ["scotch",10],
        ["whiskey",10],
        ["brandy",10],
        ["vodka",10],
        ["tequila",10],
        ["sake",10],
        ["whiterum",10],
        ["rum",10],
        ["gin",10],
        ["absinthe",10],
        ["aids",15000],
		["roadCone",50],
        ["roadBarrier",250],
        ["cautionTape",125],
        ["campFire",250],
        ["sleepbagGreen",125],
        ["sleepbagBlue",125],
        ["sleepbagBrown",125],
        ["tentRidge",500],
        ["tentDome",500],
        ["portGenerator",1000],
        ["bagfenceShort",50],
        ["bagfenceLong",50],
        ["bagfenceRound",50],
        ["bagfenceCorner",50],
		["barGate",500],
		["bagBunker",1000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[


	["apple",65],
        ["rabbit",75],
        ["salema",55],
        ["ornate",50],
        ["mackerel",200],
        ["tuna",900],
        ["mullet",300],
        ["catshark",350],
        ["water",10],
        ["turtle",4000],
        ["turtlesoup",2500],
        ["donuts",120],
        ["coffee",10],
        ["tbacon",75],
        ["lockpick",150],
        ["pickaxe",1200],
        ["redgull",1500],
        ["fuelF",850],
        ["peach",68],
        ["spikeStrip",1000],
		["blastingcharge",35000],
		["boltcutter",7500],
		["defusekit",2500],
		["storagesmall",100000],
		["storagebig",200000],
        
		["shovel",5000],
		["ziptie",1000],
        ["marijuana",3000],
        ["burger", 65],
        ["sburger",75],
        ["ffries",55],
        ["cola",10],
        ["cshake",10],
        ["cabsav",10],
        ["merlot",10],
        ["shiraz",10],
        ["grenache",10],
        ["pinotnoir",10],
        ["chardonnay",10],
        ["souvblanc",10],
        ["semillon",10],
        ["riesling",10],
        ["guiness",10],
        ["bwheat",10],
        ["cblue",10],
        ["bmoon",10],
        ["sablager",10],
        ["vbitter",10],
        ["tnew",10],
        ["told",10],
        ["clager",10],
        ["cale",10],
        ["oempire",10],
        ["jaipur",10],
        ["spetersburg",10],
        ["hhoney",10],
        ["portstout",10],
        ["sbbitter",10],
        ["moonshine",10],
        ["scotch",10],
        ["whiskey",10],
        ["brandy",10],
        ["vodka",10],
        ["tequila",10],
        ["sake",10],
        ["whiterum",10],
        ["rum",10],
        ["gin",10],
        ["absinthe",10],
		["roadCone",100],
        ["roadBarrier",500],
        ["cautionTape",250],
        ["campFire",500],
        ["sleepbagGreen",250],
        ["sleepbagBlue",250],
        ["sleepbagBrown",250],
        ["tentRidge",1000],
        ["tentDome",1000],
        ["portGenerator",2000],
        ["bagfenceShort",100],
        ["bagfenceLong",100],
        ["bagfenceRound",100],
        ["bagfenceCorner",100],
		["barGate",1000],
		["bagBunker",2000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Kart_01_Blu_F",1000],
	["C_Kart_01_Fuel_F",1000],
	["C_Kart_01_Red_F",1000],
	["C_Kart_01_Vrana_F",1000],
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_F",1000],
	["C_Hatchback_01_sport_F",1500],
	["C_Offroad_01_F",1500],
	["B_G_Offroad_01_F",1500],
	["C_SUV_01_F",1750],
	["B_MRAP_01_F",5000],
	["O_MRAP_02_F",5000],
	["I_MRAP_03_F",5000],
	["C_Van_01_transport_F",5000],
	["I_G_Van_01_transport_F",5000],
	["C_Van_01_box_F",5000],
	["C_Van_01_fuel_F",5000],
	["O_Truck_02_transport_F",7500],
	["O_Truck_02_covered_F",7500],
	["O_Truck_02_fuel_F",7500],
	["O_Truck_02_medical_F",7500],
	["I_Truck_02_transport_F",7500],
	["I_Truck_02_covered_F",7500],
	["I_Truck_02_box_F",7500],
	["I_Truck_02_medical_F",7500],
	["I_Truck_02_fuel_F",7500],
	["O_Truck_03_transport_F",10000],
	["O_Truck_03_covered_F",10000],
	["O_Truck_03_device_F",10000],
	["O_Truck_03_repair_F",10000],
	["O_Truck_03_fuel_F",10000],
	["B_Truck_01_transport_F",15000],
	["B_Truck_01_covered_F",15000],
	["B_Truck_01_box_F",15000],
	["B_Truck_01_mover_F",15000],
	["B_Truck_01_medical_F",15000],
	["B_Truck_01_repair_F",15000],
	["B_Truck_01_fuel_F",15000],
	["B_Heli_Light_01_F",15000],
	["O_Heli_Light_02_F",15000],
	["O_Heli_Light_02_unarmed_F",15000],
	["I_Heli_light_03_unarmed_F",20000],
	["I_Heli_light_03_F",20000],
	["I_Heli_Transport_02_F",25000],
	["O_Heli_Attack_02_F",20000],
	["O_Heli_Attack_02_black_F",20000],
	["B_Plane_CAS_01_F",5000],
	["O_Plane_CAS_02_F",5000],
	["I_Plane_Fighter_03_AA_F",5000],
	["B_SDV_01_F",1000],
	["C_Rubberboat",1000],
	["B_G_Boat_Transport_01_F",1000],
	["C_Boat_Civil_01_F",1500],
	["C_Boat_Civil_01_police_F",1500],
	["C_Boat_Civil_01_rescue_F",1500],
	["O_Boat_Armed_01_hmg_F",5000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",7500],
	["C_Kart_01_Fuel_F",7500],
	["C_Kart_01_Red_F",7500],
	["C_Kart_01_Vrana_F",7500],
	["B_Quadbike_01_F",3750],
	["C_Hatchback_01_F",7500],
	["C_Hatchback_01_sport_F",17500],
	["C_Offroad_01_F",22500],
	["B_G_Offroad_01_F",22500],
	["C_SUV_01_F",32500],
	["B_MRAP_01_F",175000],
	["O_MRAP_02_F",175000],
	["I_MRAP_03_F",175000],
	["C_Van_01_transport_F",75000],
	["I_G_Van_01_transport_F",75000],
	["C_Van_01_box_F",75000],
	["C_Van_01_fuel_F",75000],
	["O_Truck_02_transport_F",150000],
	["O_Truck_02_covered_F",137500],
	["O_Truck_02_fuel_F",125000],
	["O_Truck_02_medical_F",125000],
	["I_Truck_02_transport_F",150000],
	["I_Truck_02_covered_F",137500],
	["I_Truck_02_box_F",150000],
	["I_Truck_02_medical_F",125000],
	["I_Truck_02_fuel_F",125000],
	["O_Truck_03_transport_F",22500],
	["O_Truck_03_covered_F",212500],
	["O_Truck_03_device_F",1000000],
	["O_Truck_03_repair_F",200000],
	["O_Truck_03_fuel_F",200000],
	["B_Truck_01_transport_F",300000],
	["B_Truck_01_covered_F",287500],
	["B_Truck_01_box_F",300000],
	["B_Truck_01_mover_F",275000],
	["B_Truck_01_medical_F",275000],
	["B_Truck_01_repair_F",275000],
	["B_Truck_01_fuel_F",275000],
	["B_Heli_Light_01_F",150000],
	["O_Heli_Light_02_F",150000],
	["O_Heli_Light_02_unarmed_F",150000],
	["I_Heli_light_03_unarmed_F",325000],
	["I_Heli_light_03_F",325000],
	["I_Heli_Transport_02_F",375000],
	["O_Heli_Attack_02_F",500000],
	["O_Heli_Attack_02_black_F",500000],
	["B_Plane_CAS_01_F",500000],
	["O_Plane_CAS_02_F",500000],
	["I_Plane_Fighter_03_AA_F",500000],
	["B_SDV_01_F",17500],
	["C_Rubberboat",10000],
	["B_G_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_F",22500],
	["C_Boat_Civil_01_police_F",22500],
	["C_Boat_Civil_01_rescue_F",22500],
	["B_Boat_Armed_01_minigun_F",50000],
	["O_Boat_Armed_01_hmg_F",50000]
];
__CONST__(life_garage_sell,life_garage_sell);