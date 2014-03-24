#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return","_civCars","_civAir","_civBoats","_civTruck","_copCars","_copAir","_copBoats","_reb","_donator"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

_civCars = 
	[
		["B_Quadbike_01_F",2500],
		["C_Hatchback_01_F",9500],
		["C_Offroad_01_F",12500],
		["C_SUV_01_F",35000],
		["C_Van_01_transport_F",40000]
	];

_civAir =
	[
		["B_Heli_Light_01_F",305000],
		["O_Heli_Light_02_unarmed_F",1200500]
	];
	
_civBoats =
	[
		["C_Rubberboat",5000],
		["C_Boat_Civil_01_F",22000]
	];

_civTruck =
	[
		["C_Van_01_box_F",60000],
		["I_Truck_02_transport_F",75000],
		["I_Truck_02_covered_F",150000],
		["B_Truck_01_transport_F",300000],
        ["B_Truck_01_box_F",450000]
	];

_copCars =
	[
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
        if(__GETC__(life_coplevel) > 2) then
        {
            _return set[count _return,
            ["B_MRAP_01_hmg_F",750000]];
        };
	];

_copAir =
	[
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
		};
		
		if((__GETC__(life_donator) > 3) && (playerSide == west)) then
		{
			_return set[count _return,
			["B_Heli_Light_01_armed_F",750000]];
		};
		
        if(__GETC__(life_coplevel) > 4) then
        {
            _return set[count _return,
            ["I_Heli_light_03_F",500000]];
        };
	];

_copBoats =
	[
		["B_Boat_Transport_01_F",3000],
		["C_Boat_Civil_01_police_F",20000],
		["B_Boat_Armed_01_minigun_F",75000],
		["B_SDV_01_F",100000]
	];

_reb =
	[
		["B_Quadbike_01_F",2500],
		["B_G_Offroad_01_F",15000],
		["O_MRAP_02_F",150000],
		["B_Heli_Light_01_F",325000]
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
			
		};
		
		if((__GETC__(life_donator) > 3) && (license_civ_rebel)) then
		{
			_return set[count _return,
			["B_Heli_Light_01_armed_F",750000]];
		};
	];
	
_donator = 
	[
		["B_Quadbike_01_F",500],
		["C_Offroad_01_F",2500],
		["C_SUV_01_F",20000]
		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		
		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set["C_Offroad_01_F",15000]; //Service Truck
		};		
	];
	
switch (_shop) do
{
	case "civ_car_1":
	{
		_return = _civCars;
	}; 
	
	case "civ_car_2":
	{
		_return = _civCars;
	};
	
	case "civ_car_3":
	{
		_return = _civCars;
	}; 
	
	case "civ_car_4":
	{
		_return = _civCars;
	}; 
	
	case "donator_1":
	{
		_return = _donator;		
	};
	
	case "donator_2":
	{
		_return = _donator;
	};
			
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return = _civTruck;
	};
	
	case "civ_truck_2":
	{
		_return = _civTruck;	
	};
	
	case "reb_v_1":
	{
		_return = _reb;
	};
	
	case "reb_v_2":
	{
		_return = _reb;
	};
			
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",13000]
		];
	};
	
	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
		_return set[count _return,
		["O_MRAP_02_F",150000]];
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",275000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",350000]];
	};
	
	case "cop_car_1":
	{
		_return = _copCars;
	};
	
	case "cop_car_2":
	{
		_return = _copCars;
	};
	
	case "cop_car_3":
	{
		_return = _copCars;
	};
	
	case "cop_car_4":
	{
		_return = _copCars;
	};
	
	case "cop_car_5":
	{
		_return = _copCars;
	};
	
	case "cop_car_6":
	{
		_return = _copCars;
	};
	
	case "cop_car_7":
	{
		_return = _copCars;
	};
	
	case "cop_car_8":
	{
		_return = _copCars;
	};
	
	case "cop_car_9":
	{
		_return = _copCars;
	};
	
	case "fed_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
	};
	
	case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};
	
	case "civ_air_1":
	{
		_return = _civAir;
	};
	
	case "civ_air_2":
	{
		_return = _civAir;
	};
	
	case "cop_air_1":
	{
		_return = _copAir;
	};
	
	case "cop_air_2":
	{
		_return = _copAir;
	};
	
	case "cop_air_3":
	{
		_return = _copAir;
	};
	
	case "cop_air_4":
	{
		_return = _copAir;
	};
	
	case "cop_air_5":
	{
		_return = _copAir;
	};
	
	case "cop_air_6":
	{
		_return = _copAir;
	};
	
	case "cop_air_7":
	{
		_return = _copAir;
	};
	
	case "cop_air_8":
	{
		_return = _copAir;
	};
	
	case "cop_air_9":
	{
		_return = _copAir;
	};
	
	case "civ_ship_1":
	{
		_return = _civBoats;
	};
	
	case "civ_ship_2":
	{
		_return = _civBoats;
	};
	
	case "civ_ship_3":
	{
		_return = _civBoats;
	};
	
	case "cop_ship_1":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_2":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_3":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_4":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_5":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_6":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_7":
	{
		_return = _copBoats;
	};
	
	case "cop_ship_8":
	{
		_return = _copBoats;
	};
	
	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000]
		];
	};
	
	case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
};

_return;
