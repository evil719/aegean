/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_copperZones","_ironZones","_diamondZones","_saltZones","_sandZones","_saltZones","_rockZones","_tinZones","_ammoniaZones","_lithiumZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_copperZones = ["lead_1"];
_ironZones = ["iron_1"];
_diamondZones = ["diamond_1"];
_saltZones = ["salt_1"];
_sandZones = ["sand_1"];
_rockZones = ["rock_1"];
_tinZones = ["tin_1"];
_ammoniaZones = ["ammonia_1"];
_lithiumZones = ["lithium_1","lithium_2"];



//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Gather Apples',life_fnc_gatherApples,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Gather Peaches',life_fnc_gatherPeaches,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Gather Heroin',life_fnc_gatherHeroin,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Gather Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Gather Cocaine',life_fnc_gatherCocaine,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create copper zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Copper = player addAction['Mine Copper',life_fnc_gatherCopper,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Copper;"];
} foreach _copperZones;

//Create iron zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Iron = player addAction['Mine Iron',life_fnc_gatherIron,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Iron;"];
} foreach _ironZones;

//Create diamond zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Diamond = player addAction['Mine Diamond',life_fnc_gatherDiamond,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Diamond;"];
} foreach _diamondZones;

//Create salt zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Salt = player addAction['Mine Salt',life_fnc_gatherSalt,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Salt;"];
} foreach _saltZones;

//Create sand zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Sand = player addAction['Mine Sand',life_fnc_gatherSand,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Sand;"];
} foreach _sandZones;

//Create rock zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Rock = player addAction['Mine Rock',life_fnc_gatherRock,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Rock;"];
} foreach _rockZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tin = player addAction['Mine Tin',life_fnc_gatherTin,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Tin;"];
} foreach _tinZones;

//Create tin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tin = player addAction['Mine Tin',life_fnc_gatherTin,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Tin;"];
} foreach _tinZones;

//Create ammonia zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Ammonia = player addAction['Gather Ammonia Hydroxide',life_fnc_gatherAmmonia,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Ammonia;"];
} foreach _ammoniaZones;

//Create lithium zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_lithium = player addAction['Steal Lithium',life_fnc_gatherLithium,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Lithium;"];
} foreach _lithiumZones;