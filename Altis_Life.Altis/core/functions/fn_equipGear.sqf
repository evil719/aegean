#include <macro.h>
/*
	File: fn_equipGear.sqf
	Author: Le Aphec
	
	Description:
	Initializes custom gear textures
*/
private ["_texture"];

if (playerSide == west) then {
	if ((uniform player) == "U_Rangemaster") then
	{
        waitUntil{uniform player == "U_Rangemaster"};
        _texture = 
        switch (__GETC__(life_coplevel)) do
            {
            case 0: {"images\c_poloshirtpants_cadet_co.jpg"};
            case 1: {"images\c_poloshirtpants_cadet_co.jpg"};
            case 2: {"images\c_poloshirtpants_police_co.jpg"};
            case 3: {"images\c_poloshirtpants_police_co.jpg"};
            case 4: {"images\c_poloshirtpants_police_co.jpg"};
            case 5: {"images\c_poloshirtpants_police_co.jpg"};
            case 6: {"images\c_poloshirtpants_police_co.jpg"};
            case 7: {"images\c_poloshirtpants_police_co.jpg"};
            default: {"images\c_poloshirtpants_cadet_co.jpg"};
            };
        player setObjectTextureGlobal [0,_texture];
        waitUntil{uniform != "U_Rangemaster"};
        };
	};
};