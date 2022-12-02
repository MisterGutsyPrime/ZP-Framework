/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

params["_unit",["_return",false,[true]],"_gear"];

_gear = getUnitLoadout _unit;

if(!ZP_SAVING_EXTDB) then
{
    profileNamespace setVariable [format["ZP_Gear_%1",(getPlayerUID _unit)],_gear];
    saveProfileNamespace;
} else {
    private _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
	{
	    format["UPDATE ZP_PlayersM SET Gear = '%1' WHERE PID = '%2'",_gear,(getPlayerUID _unit)];
	} else {
	    format["ZP_updateGear:%1:%2",_gear,(getPlayerUID _unit)];
	};
	
	[1,_query] call ZP_fnc_asyncCall;
};

if(_return) then 
{
    _gear;
} else {
    true;
};
