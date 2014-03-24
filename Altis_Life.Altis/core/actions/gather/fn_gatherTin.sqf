/*
	File: fn_gatherApples.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers apples?
*/
private["_sum"];
_sum = ["tineore",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (life_inv_pickaxe < 1) exitWith {hint "You require a Pickaxe to perform this action."};
if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Mining Tin...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	playSound "mining";
	sleep 2;
	if(([true,"tinore",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["You have picked %1 Tin Ore(s)",_sum],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;