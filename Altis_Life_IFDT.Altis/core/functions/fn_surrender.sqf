/*
	@Version: 2.3
	@Edited: 14.11.2013
*/
private ["_pos"];

player setVariable ["surrender", true, true];

while { player getVariable ["surrender", false] }  do {
	player playMove "AmovPercMstpSnonWnonDnon_Ease";
	
	// Check if player still alive.
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
};

player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut";
