/*
	@Version: 2.0
	@Author: Austin, Blackwing Gaming
	@Edited: 07.10.2013
*/
private ["_distance","_pay","_txt"];

if (playerSide == west) exitWith {hint "Cops cant use this."; };

_distance = player distance life_explorer_wreck;
_pay = round(_distance * (5 + random 3));

waitUntil {player distance life_explorer_wreck <= 15 || !alive player};

// Check if player is still alive.
if (!alive player) exitWith {
	["TaskFailed", ["Underwater Archaeology", "You failed the mission because you died."]] call BIS_fnc_showNotification;
	life_explorer_task setTaskState "Failed";
	player removeSimpleTask life_explorer_task;
	deleteVehicle life_explorer_wreck;
};

// Remove task.
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
["TaskDone", ["Underwater Archaeology", "You've found the wreck."]] call bis_fnc_showNotification;

// Create new task.
[] spawn  {
	sleep 2;
	life_explorer_task = player createSimpleTask ["uw_exploration"];
	life_explorer_task setSimpleTaskDescription ["Go to the boss and report your findings from the wreck.", "Underwater Archaeology",""];
	life_explorer_task setTaskState "Assigned";
	player setCurrentTask life_explorer_task;
	["TaskAssigned", ["Underwater Archaeology", "Go to the boss and report your findings from the wreck."]] call bis_fnc_showNotification;
};

// Wait until player reaches ai.
waitUntil { player distance life_explorer_ai <= 4 };
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
deleteVehicle life_explorer_wreck;

_txt = parseText format ["Oh wonderful, you found it! This information will help us a lot! Here's the payment for your work: <t color='#99C101'>$%1</t>", _pay];
"Underwater Archaeology" hintC [_txt];

life_no_injection = true;
life_cash = life_cash + _pay;

sleep 1;
["TaskDone", ["Underwater Archaeology", "You've reported back to the boss."]] call bis_fnc_showNotification;