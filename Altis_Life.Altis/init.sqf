enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.2";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";
};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

// enable logistics
_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
[] execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";

//tear gas
[] execVM "scripts\gas\gasmask.sqf";
[] execVM "scripts\gas\teargas.sqf";
[] execVM "scripts\gas\teargasGL.sqf";

//weather
[] execVM "core\functions\fn_weather.sqf";

if(!StartProgress) then
{
	[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;

onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };