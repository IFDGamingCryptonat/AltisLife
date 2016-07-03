/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cryptonat
	
	Description:
	Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
removeGoggles player;
removeHeadGear player;
player forceAddUniform "U_B_HeliPilotCoveralls";
player addBackpack "B_Bergen_sgg";
player addItem "Toolkit";
player addItem "Medikit";
player addItem "NVGoggles";
player assignItem "NVGoggles";
player addWeapon "NVGoggles";
player addItem "Rangefinder";
player assignItem "Rangefinder";
player addItem "itemGPS";
player assignItem "itemGPS";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
if(hmd player != "") then {
	player unlinkItem (hmd player);
};
player setObjectTextureGlobal [0,"textures\med_uniform.paa"];