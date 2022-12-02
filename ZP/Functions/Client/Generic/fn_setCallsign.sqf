/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

params["_insignia","_update"];
private ["_callsign","_grp","_grp2","_grp3"];

switch (_insignia) do {
case 0: {_grp = "ZP_Alpha";_callsign = ""};
case 1: {_grp = "Ares_1";_callsign = "ares1";};
case 2: {_grp = "Ares_2";_callsign = "ares2";};
case 3: {_grp = "Ares_3";_callsign = "ares3";};
case 4: {_grp = "Ares_4";_callsign = "ares4";};
case 5: {_grp = "Atlas_1";_callsign = "atlas1";};
case 6: {_grp = "Poseidon_1";_callsign = "poseidon1";};
};
[player, ""] call BIS_fnc_setUnitInsignia; // Clear players patches
[player, _callsign] call BIS_fnc_setUnitInsignia; // Set players patches to callsigns 

_grp2 = switch (playerSide) do { 
    case west: {"B " + _grp}; 
    case east: {"O " + _grp}; 
    case resistance: {"R " + _grp}; 
    case civilian: {"C " + _grp}; 
};
if ((str allGroups find _grp2) != -1) then {
[player] joinSilent (missionNamespace getVariable _grp2);
} else {
_grp3 = createGroup [playerSide, true];
missionNamespace setVariable [_grp2, _grp3, true];
[player] joinSilent _grp3;
group player setGroupIdGlobal [_grp];
};
if ((groupID (group player)) == _grp) then {[format["You have joined %1", _grp2], "success"] call ZP_fnc_notification_system} else {["Group assigning failed", "error"] call ZP_fnc_notification_system};

private _respawns = (getNumber(getMissionConfig "CfgClient" >> "ZPrespawnTickets"));
[format["You have %1 respawns", _respawns], "info"] call ZP_fnc_notification_system;


switch (_insignia) do {
case 0: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Flag.paa"
}}]};
case 1: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Ares_1_Flag.paa"
}}]};
case 2: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Ares_2_Flag.paa"
}}]};
case 3: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Ares_3_Flag.paa"
}}]};
case 4: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Ares_4_Flag.paa"
}}]};
case 5: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Alas_1_Flag.paa"
}}]};
case 6: {
player addEventHandler ["GetInMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture "ZP\Assets\flag\Poseidon_1.paa"
}}]};
};

/*
player addEventHandler ["GetOutMan", {params ["_unit","_role", "_vehicle"];
if (_vehicle isKindOf "car" && _role == "driver") then {
_vehicle forceFlagTexture ""
}}]};
*/

if (_update) then
{
    ZP_CLIENT = [0,(getPlayerUID player),_insignia];
	if(isServer) then
	{
	    [ZP_CLIENT] call ZP_fnc_clientToServer;
	} else {
	    player setVariable [format["ZP_Insignia_%1",(getPlayerUID player)],_insignia];
	};
	ZP_CLIENT = nil;
};

true;
