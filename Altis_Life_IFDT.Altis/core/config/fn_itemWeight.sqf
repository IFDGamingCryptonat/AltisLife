/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {6};
	case "oilp": {4};
	case "heroinu": {5};
	case "heroinp": {3};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {1};
	case "mackerel": {2};
	case "tuna": {3};
	case "mullet": {2};
	case "catshark": {3};
	case "turtle": {3};
	case "fishing": {2};
	case "turtlesoup": {1};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {1};
	case "fuelF": {4};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {7};
	case "ironore": {8};
	case "copper_r": {4};
	case "iron_r": {5};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {3};
	case "cocaine": {5};
	case "cocainep": {4};
	case "spikeStrip": {7};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {4};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	
	case "shovel": {2};
	case "stolenJewelry": {1};
	case "ziptie": {1};
	case "burger": {1};
	case "sburger": {1};
	case "ffries": {1};
	case "cola": {1};
	case "cshake": {1};
	case "roadCone": {1};
	case "roadBarrier": {5};
	case "cautionTape": {3};
	case "campFire": {2};
	case "sleepbagGreen": {2};
	case "sleepbagBlue": {2};
	case "sleepbagBrown": {2};
	case "tentRidge": {5};
	case "tentDome": {5};
	case "portGenerator": {7};
	case "bagfenceShort": {8};
	case "bagfenceLong": {10};
	case "bagfenceRound": {9};
	case "bagfenceCorner": {9};
	case "barGate": {6};
	case "bagBunker": {25};
	default {1};
};
