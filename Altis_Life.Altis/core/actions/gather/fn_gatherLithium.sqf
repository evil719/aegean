/*
	File: fn_gatherCocaine.sqf
	
	Description:
	Gathers cocaine?
*/
private["_sum"];
_sum = ["lithium",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering Lithium Acid...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"lithium",3] call life_fnc_handleInv)) then
	{
		titleText["You have collected some Lithium Acid.","PLAIN"];
	};
};

life_action_inUse = false;