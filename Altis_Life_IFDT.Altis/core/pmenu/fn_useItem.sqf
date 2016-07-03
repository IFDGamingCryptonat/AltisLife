/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee" or _item == "cola" or _item == "cshake" or _item == "cabsav" or _item == "merlot" or _item == "shiraz" or _item == "grenache"or _item == "pinotnoir" or _item == "chardonnay" or _item == "souvblanc" or _item == "semillon" or _item == "riesling" or _item == "guiness"  or _item == "bwheat" or _item == "cblue" or _item == "bmoon" or _item == "sablager" or _item == "vbitter" or _item == "tnew" or _item == "told" or _item == "clager" or _item == "cale" or _item == "oempire" or _item == "jaipur" or _item == "spetersburg" or _item == "hhoney" or _item == "portstout" or _item == "sbbitter" or _item == "moonshine" or _item == "scotch" or _item == "whiskey" or _item == "brandy" or _item == "vodka" or _item == "tequila" or _item == "sake" or _item == "whiterum" or _item == "rum" or _item == "gin" or _item == "absinthe"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["You can now run farther for 3 minutes","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "You already have a Spike Strip active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","burger","sburger","ffries"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "roadCone"):
	{
		if(!isNull life_roadcone) exitWith {hint "You have already placed a road cone."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_roadCone;
		};
	};
	
	case (_item == "roadBarrier"):
	{
		if(!isNull life_roadbarrier) exitWith {hint "You have already placed a road barrier."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_roadBarrier;
		};
	};
	
	case (_item == "cautionTape"):
	{
		if(!isNull life_cautiontape) exitWith {hint "You have already placed caution tape."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cautionTape;
		};
	};
	
	case (_item == "campFire"):
	{
		if(!isNull life_campfire) exitWith {hint "You have already placed a campfire."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_campFire;
		};
	};
	
	case (_item == "sleepbagGreen"):
	{
		if(!isNull life_sleepbaggreen) exitWith {hint "You have already placed a green sleeping bag."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_sleepbagGreen;
		};
	};
	
	case (_item == "sleepbagBlue"):
	{
		if(!isNull life_sleepbagblue) exitWith {hint "You have already placed a blue sleeping bag."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_sleepbagBlue;
		};
	};
	
	case (_item == "sleepbagBrown"):
	{
		if(!isNull life_sleepbagbrown) exitWith {hint "You have already placed a brown sleeping bag."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_sleepbagBrown;
		};
	};
	
	case (_item == "tentRidge"):
	{
		if(!isNull life_tentridge) exitWith {hint "You have already placed a ridge tent."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_tentRidge;
		};
	};
	
	case (_item == "tentDome"):
	{
		if(!isNull life_tentdome) exitWith {hint "You have already placed a dome tent."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_tentDome;
		};
	};
	
	case (_item == "portGenerator"):
	{
		if(!isNull life_portgenerator) exitWith {hint "You have already placed a portable generator."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_portGenerator;
		};
	};
	
	case (_item == "bagfenceShort"):
	{
		if(!isNull life_bagfenceshort) exitWith {hint "You have already placed a short sandbag fence."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bagfenceShort;
		};
	};
	
	case (_item == "bagfenceLong"):
	{
		if(!isNull life_bagfencelong) exitWith {hint "You have already placed a long sandbag fence."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bagfenceLong;
		};
	};
	
	case (_item == "bagfenceRound"):
	{
		if(!isNull life_bagfenceround) exitWith {hint "You have already placed a round sandbag fence."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bagfenceRound;
		};
	};
	
	case (_item == "bagfenceCorner"):
	{
		if(!isNull life_bagfencecorner) exitWith {hint "You have already placed a corner sandbag fence."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bagfenceCorner;
		};
	};
	
	case (_item == "barGate"):
	{
		if(!isNull life_bargate) exitWith {hint "You have already placed a bar gate."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barGate;
		};
	};
	
	case (_item == "bagBunker"):
	{
		if(!isNull life_bagbunker) exitWith {hint "You have already placed a bunker."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bagBunker;
		};
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_smokeweed;
		};
	};
	
	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useCocaine;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useCocaine;
		};
	};
	
	case (_item == "shovel"):
	{
		[] spawn life_fnc_shovelUse;
	};
	
	
	
	default
	{
		hint "This item isn't usable.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;