_onScreenTime = 8;
 
sleep 5; //Wait in seconds before the credits start after player is in-game
_role1 = "Welcome to IFD Gaming's Altis Life"; //In yellow
_role1names = ["www.ifdgaming.com"]; //In white
_role2 = "Server Rules";
_role2names = ["Must be followed at all times. You can find them on the forums"]; 
_role3 = "Join Our Teamspeak";
_role3names = ["ts3.ifdgaming.com"];
_role4 = "Please Report";
_role4names = ["Any in-game issues, bugs, or problems on the forums"];
_role5 = "NO VOICE IN SIDE CHAT";
_role5names = ["Absolutely no voice over side chat<br/>You will be kicked, if repeatedly abused</br>You will be banned"];
_role6 = "SAFE ZONES";
_role6names = ["No Stealing <br/> No Knocking Out <br/> NO SHOOTING <br/> No RDM <br/> No VDM <br/> You have been warned"];
_role7 = "Basic Controls";
_role7names = ["Windows Key - Interact <br/>Y Key - Player Menu <br/> SHIFT+H - Holster/Unholster <br/> SHIFT+K - Surrender <br/> SHIFT+SPACE - Jump"];
_role8 = "More Info";
_role8names = ["Open your map and check the briefing topics on the top left."];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='.75' color='#ff0000' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.65' color='#ffffff' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names]
];