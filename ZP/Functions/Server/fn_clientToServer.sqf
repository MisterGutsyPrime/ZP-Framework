/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_value","_mode","_uid","_val"];

_mode = _value select 0;
_uid = _value select 1;
_val = _value select 2;

if(!ZP_SAVING_EXTDB) then
{
    private _var = 
	[
	    [format["ZP_Insignia_%1",_uid],_val],
		[format["ZP_Role_%1",_uid],_val],
		[format["ZP_Frequency_%1",_uid],_val],
		[format["ZP_Name_%1",_uid],_val]
	] select _mode;
    
	profileNamespace setVariable _var;
	saveProfileNamespace;
} else {
    private _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
	{ 
		[
		    format["UPDATE ZP_PlayersM SET Insignia = '%1' WHERE PID = '%2'",_val,_uid],
			format["UPDATE ZP_PlayersM SET Role = '%1' WHERE PID = '%2'",_val,_uid],
			format["UPDATE ZP_PlayersM SET Frequency = '%1' WHERE PID = '%2'",_val,_uid],
			format["UPDATE ZP_PlayersM SET Name = '%1' WHERE PID = '%2'",_val,_uid]
		] select _mode;
	} else {
	    [
		    format["ZP_updateName:%1:%2",_val,_uid],
			format["ZP_updateRole:%1:%2",_val,_uid],
			format["ZP_updateFreq:%1:%2",_val,_uid],
			format["ZP_updateName:%1:%2",_val,_uid]
		] select _mode;
	};
	
	[1,_query] call ZP_fnc_asyncCall;
};	

true;
	