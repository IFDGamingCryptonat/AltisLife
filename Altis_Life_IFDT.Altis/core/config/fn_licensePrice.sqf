/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1000}; //Drivers License cost
	case "boat": {10000}; //Boating license cost
	case "pilot": {100000}; //Pilot/air license cost
	case "gun": {50000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {150000}; //Oil processing license cost
	case "cair": {100000}; //Cop Pilot License cost
	case "swat": {40000}; //Swat License cost
	case "cg": {10000}; //Coast guard license cost
	case "heroin": {135000}; //Heroin processing license cost
	case "marijuana": {100000}; //Marijuana processing license cost
	case "medmarijuana": {75000}; //Medical Marijuana processing license cost
	case "gang": {125000}; //Gang license cost
	case "rebel": {500000}; //Rebel license cost
	case "truck": {135000}; //Truck license cost
	case "diamond": {100000};
	case "salt": {50000};
	case "cocaine": {150000};
	case "sand": {10000};
	case "iron": {45000};
	case "copper": {35000};
	case "cement": {55000};
	case "mair": {75000};
	case "home": {75000};
};