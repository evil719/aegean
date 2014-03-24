/*
	File: fn_gatherCocaine.sqf
	
	Description:
	Gathers cocaine?
*/
private["_sum"];
_sum = ["ammonia",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering Ammonia Hydroxide...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"ammonia",3] call life_fnc_handleInv)) then
	{
		titleText["You have collected some Ammonia Hydroxide.","PLAIN"];
	};
};

life_action_inUse = false;