#include <macro.h>
/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "liquor": {["IFD Liquors",["cabsav","merlot","shiraz","grenache","pinotnoir","chardonnay","souvblanc","semillon","riesling","guiness","bwheat","cblue","bmoon","sablager","vbitter","tnew","told","clager","cale","oempire","jaipur","spetersburg","hhoney","portstout","sbbitter","moonshine","scotch","whiskey","brandy","vodka","tequila","sake","whiterum","rum","gin","absinthe"]]};
	case "burgershop": {["IFD Burgers",["burger","sburger","ffries","cola","cshake"]]};
	case "blackmarket": {["Black Market Groceries",["water","coffee","tbacon","lockpick","pickaxe","fuelF","boltcutter","blastingcharge","defusekit","storagesmall","storagebig"]]};
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","boltcutter","cement","storagesmall","storagebig"]]};
	case "rebelfood": {["Rebel Groceries",["marijuana","coffee","donuts","tbacon","lockpick","pickaxe","spikeStrip","fuelF","ziptie","boltcutter","blastingcharge","storagesmall","storagebig","defusekit","bagfenceShort","bagfenceLong","bagfenceRound","bagfenceCorner"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","water","rabbit","apple","redgull","fuelF","spikeStrip","defusekit","roadCone","roadBarrier","cautionTape","barGate","bagBunker","bagfenceShort","bagfenceLong","bagfenceRound","bagfenceCorner"]]};
	case "medic": {["Medic Item Shop",["water","coffee","tbacon","roadCone","roadBarrier","cautionTape"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "camping": {["IFD Wilderness Survival Shop",["campFire","sleepbagGreen","sleepbagBlue","sleepbagBrown","portGenerator","bagfenceShort","bagfenceLong","bagfenceRound","bagfenceCorner"]]}; //"tentRidge","tentDome",
	case "pawn": {["Altis Gold & Silver Pawn Shop",["shovel","stolenJewelry","pickaxe","boltcutter","fuelF","cement"]]};
	case "admin": {["Admin Market",["water","coffee","donuts","tbacon","rabbit","apple","peach","redgull","salema","ornate","mackerel","mullet","tuna","catshark","turtlesoup","turtle","cocainep","heroinp","marijuana","stolenJewelry","goldbar","glass","salt_r","cement","iron_r","copper_r","diamondc","oilp","shovel","pickaxe","fuelF","spikeStrip","lockpick","ziptie","boltcutter","blastingcharge","defusekit","storagesmall","storagebig","roadCone","roadBarrier","cautionTape","barGate","bagBunker","bagfenceShort","bagfenceLong","bagfenceRound","bagfenceCorner"]]};
};