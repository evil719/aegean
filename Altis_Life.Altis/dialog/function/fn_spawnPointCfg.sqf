/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_ret"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		
		_ret = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Pefkas Bay Sheriff's Substation","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_7","Atheria Sheriff's HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_8","Iremi Bay Sheriff's Substation","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_9","Sofia Police Substation","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_10","Coast Guard HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case civilian:
	{
				
		_ret = [
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofie","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		//if donor, they also get these options
		//Custom Players
		if((getPlayerUID player) in ["76561198082074868","0","0"]) then {
			_ret = _ret + [
				["pmc_1","PMC HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
			};		
		};
	};
};

_ret;