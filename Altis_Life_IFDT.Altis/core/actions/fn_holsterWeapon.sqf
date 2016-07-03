/*
	@Version: 3.1
	@Author: Cryptonat
	@Edited: 2/18/14
*/

if (vehicle player != player) exitWith {};
if (player getVariable "restrained") exitWith {};

if (!life_holstered) then {
	if (currentWeapon player == "") exitWith {};
	
	life_holstered_weapon = currentWeapon player;
	life_holstered_magazine = currentMagazine player;
	life_holstered_ammo = player ammo life_holstered_weapon;
	life_holstered_items = [];
	
	switch (currentWeapon player) do {
		case (primaryWeapon player): {
			life_holstered_primary = true;
			life_holstered_items = primaryWeaponItems player;
			player playMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSnonWnonDnon";
			sleep 3;
		};
		case (handgunWeapon player): {
			life_holstered_primary = false;
			life_holstered_items = handgunItems player;
			player playMove "AmovPercMstpSrasWpstDnon_AmovPercMstpSnonWnonDnon";
			sleep 2;
		};
	};
	
	player removeWeapon life_holstered_weapon;
	life_holstered = !life_holstered;
} else {
	if (isNil {life_holstered_weapon}) exitWith {};
	
	titleText ["Drawing your weapon...", "PLAIN"];
	sleep 2;
	
	player addMagazine life_holstered_magazine;
	player addWeapon life_holstered_weapon;
	
	if (life_holstered_primary) then {
		{
			player addPrimaryWeaponItem _x;
		} forEach life_holstered_items;
	} else {
		{
			player addHandgunItem _x;
		} forEach life_holstered_items;
	};
	
	player setAmmo [life_holstered_weapon, life_holstered_ammo];
	player selectWeapon life_holstered_weapon;
	
	life_holstered_weapon = nil;
	life_holstered = !life_holstered;
};