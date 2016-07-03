
if (playerSide == west) then {
	if ((uniform player) == "U_Rangemaster") then
	{
		[[player,"textures\police_shirt.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
	if ((uniform player) == "U_B_CombatUniform_mcam_worn") then
	{
		[[player,"textures\swat_shirt.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
};

if (playerSide == civilian) then {
	if ((uniform player) == "U_C_Poloshirt_redwhite") then
	{
		[[player,"textures\U_C_Poloshirt_redwhite.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
};

if (playerSide == independent) then {
	if ((uniform player) == "U_B_HeliPilotCoveralls") then
	{
		player setObjectTextureGlobal [0,"textures\med_uniform.paa"];
	};
};


