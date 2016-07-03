/*
Author: Cryptonat

For IFD Gaming's Altis Life
IFDgaming.com

Selects vehicle inventory.

Fuck you BTN/Luxe Gaming - I know you steal
*/

private["_dmVehicle","_dmDrug","_drugWeight","_maxWeightRaw","_maxWeight","_baseAmount","_maxFit","_amount","_totalWeight"];
_veh = _this select 0;
_dmVehicle = _this select 1;
_dmDrug = _this select 2;

/*
_baseAmount = 10; //initial inventory amount
_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
_maxWeight = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
*/

switch (_veh) do 
				{
					case "B_Truck_01_box_F":
					{
					// max weight is 500
					_baseAmount = 22; //initial inventory amount
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
					case "B_Truck_01_box_F":
					{
					// max weight is 500
					_baseAmount = 18;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
					case "O_Truck_03_covered_F":
					{
					//max weight is 400
					_baseAmount = 15;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
					case "O_Truck_02_transport_F":
					{
					//max weight is 400
					_baseAmount = 15;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
					case "I_Heli_Transport_02_F":
					{
					//max weight is 200
					_baseAmount = 11;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
					case "C_Hatchback_01_sport_F":
					{
					//max weight is 150
					_baseAmount = 9;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
					case "C_Van_01_box_F":	
					{
					//max weight is 150
					_baseAmount = 9;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};	
					case "O_Heli_Light_02_unarmed_F":		
					{
					//max weight is 150
					_baseAmount = 9;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};	
					case "C_Van_01_transport_F":
					{
					//max weight is 125
					_baseAmount = 8;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};			
					case "B_Heli_Light_01_F":
					{
					//max weight is 100
					_baseAmount = 7;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};			
					case "C_Hatchback_01_F":
					{
					//max weight is 40
					_baseAmount = 2;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};			
					case "B_Quadbike_01_F":
					{
					//max weight is 25
					_baseAmount = 2;
					_drugWeight = [_dmDrug] call life_fnc_itemWeight; //what does the drug weigh
					_maxWeightRaw = [_dmVehicle] call life_fnc_vehicleWeight; //how much can the vehicle hold total
					_maxWeight = _maxWeightRaw select 0;
					_maxFit = floor((_maxWeight / _drugWeight) - _baseAmount); //how much of this item can the trunk hold
					_amount = round(random _maxFit) + _baseAmount; //how much are we putting in the trunk
					_totalWeight = _amount * _drugWeight; //weight calculation for the item insert script
					_dmVehicle setVariable ["Trunk",[[[_dmDrug,_amount]],_totalWeight],true];
					[_dmVehicle] call life_fnc_vehInventory;
					};
				};