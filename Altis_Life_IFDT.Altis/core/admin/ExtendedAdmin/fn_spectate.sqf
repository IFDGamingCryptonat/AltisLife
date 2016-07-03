private["_unit"];
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];
//if(isNil _unit) exitWith {hint "Please select a unit"};

_mycv = cameraView;

nlist = [];  
selecteditem = _unit;

if (isNil "spectate") then {spectate = true;} else {spectate = !spectate;};
if (spectate) then 
{	 	
	if (!isnull selecteditem) then
	{
		_name = selecteditem;
		{
			if(_x == _name) then 
			{
				
				F3_EH = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 0x3D) then {spectate = false;};"];	
				(vehicle _x) switchCamera "EXTERNAL";
				titleText ["Spectating...","PLAIN DOWN"];titleFadeOut 4;
				waitUntil { !(alive _x) or !(alive player) or !(spectate)};
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", F3_EH];
				player switchCamera _mycv;	
				 		
			};
		} forEach playableUnits;
	};
	spectate = false;
};
if (!spectate) then 
{	
	titleText ["Back to player...","PLAIN DOWN"];titleFadeOut 4;
};