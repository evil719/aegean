/*
	File: fn_gatherrock.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers apples?
*/
private["_sum"];
_sum = ["rock",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (life_inv_pickaxe < 1) exitWith {hint "You require a Pickaxe to perform this action."};
if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Mining rock...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	playSound "mining";
	sleep 2;
	if(([true,"rock",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["You have mined %1 Rock(s)",_sum],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;