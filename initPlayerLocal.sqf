/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
    Player initialization
*/
if(!hasInterface) exitWith {}; // If headless then exit
[] execVM "ZP\Setup\fn_clientInitialization.sqf";

_handle = execVM "ZP\addonscs.sqf";