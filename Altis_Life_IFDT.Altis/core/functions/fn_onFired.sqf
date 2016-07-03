/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_projectile"];
_ammoType = _this select 4; 
_projectile = _this select 6;

if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};
/*
if(_ammoType in ["M_Titan_AA","M_Titan_AT","M_Titan_AP"]) then {
	[[0,format["FIRED: %1",_projectile]],"life_fnc_broadcast",TRUE,FALSE] spawn life_fnc_MP;
	_projectile setVariable["empWeapon",TRUE,TRUE];
};
/*