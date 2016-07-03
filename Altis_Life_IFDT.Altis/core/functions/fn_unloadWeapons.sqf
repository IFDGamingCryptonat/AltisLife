/*

*/
private ["_mags","_primary","_handgun","_mag","_attach"];

_mags = magazines player;
{ player removeMagazine _x } forEach _mags;
_primary = primaryWeapon player;
_handgun = handgunWeapon player;
if (_primary != "") then {
	_mag = primaryWeaponMagazine player;
	_attach = primaryWeaponItems player;
	player removeWeapon _primary;
	player addWeapon _primary;
	{ player addPrimaryWeaponItem _x; } forEach _attach;
	if (count _mag > 0) then { player addMagazine (_mag select 0); };
};
if (handgunWeapon player != "") then {
	_mag = handgunMagazine player;
	player removeWeapon _handgun;
	player addWeapon _handgun;
	if (count _mag > 0) then { player addMagazine (_mag select 0); };
};
{ player addMagazine _x } forEach _mags;
