/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	
	case "life_inv_shovel": {"Shovel"};
	case "life_inv_stolenJewelry": {"Stolen Jewelry"};
	case "life_inv_ziptie": {"Ziptie"};
	case "life_inv_burger": {"IFD Burger"};
	case "life_inv_sburger": {"Supreme IFD Burger"};
	case "life_inv_ffries": {"French Fries"};
	case "life_inv_cola": {"Kavala Kola"};
	case "life_inv_cshake": {"IFD Chocolate Shake"};
	case "life_inv_cabsav": {"Cabernet Savignon"};
	case "life_inv_merlot": {"Merlot"};
	case "life_inv_shiraz": {"Shiraz"};
	case "life_inv_grenache": {"Grenache"};
	case "life_inv_pinotnoir": {"Pinot Noir"};
	case "life_inv_chardonnay": {"Chardonnay"};
	case "life_inv_souvblanc": {"Souvignon Blanc"};
	case "life_inv_semillon": {"Semillon"};
	case "life_inv_riesling": {"Riesling"};
	case "life_inv_guiness": {"Guiness"};
	case "life_inv_bwheat": {"Boulevard Wheat"};
	case "life_inv_cblue": {"Cobalt Blue"};
	case "life_inv_bmoon": {"Blue Moon"};
	case "life_inv_sablager": {"Samuel Adams Boston Lager"};
	case "life_inv_vbitter": {"Victoria Bitter"};
	case "life_inv_tnew": {"Toohey's New"};
	case "life_inv_told": {"Toohey's Old"};
	case "life_inv_clager": {"Crown Lager"};
	case "life_inv_cale": {"Cooper's Ale"};
	case "life_inv_oempire": {"Old Empire"};
	case "life_inv_jaipur": {"Jaipur"};
	case "life_inv_spetersburg": {"Saint Petersburg"};
	case "life_inv_hhoney": {"Heligan Honey"};
	case "life_inv_portstout": {"Port Stout"};
	case "life_inv_sbbitter": {"Sussex Best Bitter"};
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_scotch": {"Single Malt Scotch"};
	case "life_inv_whiskey": {"Whiskey"};
	case "life_inv_brandy": {"Brandy"};
	case "life_inv_vodka": {"Vodka"};
	case "life_inv_tequila": {"Tequila"};
	case "life_inv_sake": {"Sake"};
	case "life_inv_whiterum": {"White Rum"};
	case "life_inv_rum": {"Spiced Rum"};
	case "life_inv_gin": {"Gin"};
	case "life_inv_absinthe": {"Absinthe"};
	case "life_inv_aids": {"Aids"};
	case "life_inv_roadCone": {"Road Cone"};
	case "life_inv_roadBarrier": {"Road Barrier"};
	case "life_inv_cautionTape": {"Caution Tape"};
	case "life_inv_campFire": {"Campfire"};
	case "life_inv_sleepbagGreen": {"Green Sleeping Bag"};
	case "life_inv_sleepbagBlue": {"Blue Sleeping Bag"};
	case "life_inv_sleepbagBrown": {"Brown Sleeping Bag"};
	case "life_inv_tentRidge": {"Ridge Tent"};
	case "life_inv_tentDome": {"Dome Tent"};
	case "life_inv_portGenerator": {"Portable Generator"};
	case "life_inv_bagfenceShort": {"Short Sandbag Fence"};
	case "life_inv_bagfenceLong": {"Long Sandbag Fence"};
	case "life_inv_bagfenceRound": {"Round Sandbag Fence"};
	case "life_inv_bagfenceCorner": {"Corner Sandbag Fence"};
	case "life_inv_barGate": {"Bar Gate"};
	case "life_inv_bagBunker": {"Bunker"};
	
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_civ_gang": {"Black Market License"};
};
