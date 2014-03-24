/*
	File: fn_sirenLights.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Lets play a game! Can you guess what it does? I have faith in you, if you can't
	then you have failed me and therefor I lose all faith in humanity.. No pressure.
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad entry!
if(!(typeOf _vehicle in [	"C_Offroad_01_F",							
							"C_SUV_01_F",
							"B_MRAP_01_F",
							"C_Hatchback_01_sport_F",
							"B_Heli_Light_01_F",
							"B_Heli_Transport_01_F",
							"I_Heli_light_03_unarmed_F",
							"I_MRAP_03_hmg_F",
							"I_MRAP_03_F",
							"B_APC_Wheeled_01_cannon_F",
							"B_MRAP_01_hmg_F"])) 
							exitWith {}; //Nuts

_trueorfalse = _vehicle getVariable["lights",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["lights",FALSE,TRUE];
} else {
	_vehicle setVariable["lights",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_copLights",true,false] call life_fnc_MP;
};