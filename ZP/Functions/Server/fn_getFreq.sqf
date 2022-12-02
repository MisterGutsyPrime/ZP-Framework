/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

params["_SR","_LR"];
private ["_SR","_LR","_frequency"];

_frequency = _SR + _LR;

if(!ZP_SAVING_EXTDB) then
{
    profileNamespace setVariable [format["ZP_Frequency_%1",_uid],_frequency];
    saveProfileNamespace;
} else {
    private _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
	{
	    format["UPDATE ZP_PlayersM SET Frequency = '%1' WHERE PID = '%2'",_frequency,_uid];
	} else {
	    format["ZP_updateFreq:%1:%2",_frequency,_uid];
	};
	
	[1,_query] call ZP_fnc_asyncCall;
};
