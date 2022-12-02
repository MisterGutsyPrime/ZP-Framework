/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

params["_frequency"];
private ["_SR","_LR","_ZP_TFAR_SW_radio","_ZP_TFAR_SW_radio"];

_ZP_TFAR_SW_radio = call TFAR_fnc_haveSWRadio;
_ZP_TFAR_LR_radio = call TFAR_fnc_haveLRRadio;	

if (_ZP_TFAR_SW_radio) then {
_SR = [_frequency, 0, 3] call BIS_fnc_subSelect;
{[(call TFAR_fnc_activeSwRadio), (_forEachIndex + 1), _SR select _forEachIndex] call TFAR_fnc_SetChannelFrequency} forEach _SR;
};

if (_ZP_TFAR_LR_radio) then {
_LR = [_frequency, 4, 7] call BIS_fnc_subSelect;
{[(call TFAR_fnc_activeSwRadio), (_forEachIndex + 1), _LR select _forEachIndex] call TFAR_fnc_SetChannelFrequency} forEach _LR;
};

[_SR, _LR] remoteExecCall ["ZP_fnc_getFreq",2,false];
["Radio Frequencys set", "success"] call ZP_fnc_notification_system;
true;
