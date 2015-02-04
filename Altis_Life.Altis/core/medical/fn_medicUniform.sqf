/*
    File: fn_medicUniform.sqf
    Author: Niels "Gamewalker" Kräupl

    Description:
    Loads saved civilian gear, this is limited for a reason and that's balance.
*/

[] spawn
{
    while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        player setObjectTextureGlobal [0, "textures\MED\medic_uniform.jpg"];
        waitUntil {uniform player != "U_Rangemaster"};
    };
};