/*
    Author - R00x
    © All Fucks Reserved
    Website - http://www.sunrise-production.com
*/

private _cleanup =
{
    private["_all","_garage","_owner","_uid","_plate","_index"];
	
    _all = (allMissionObjects "LandVehicle") + (allMissionObjects "Air") + (allMissionObjects "Ship") + (allMissionObjects "Submarine");

    {
        if(!alive _x) then
	    {
		    _owner = _x getVariable "ZP_Owner";
		    _uid = _owner select 0;
		    _plate = _owner select 1;
		
		    if(!ZP_SAVING_EXTDB) then
		    {
		        _garage = profileNamespace getVariable[format["ZP_Garage_%1",_uid],[]];
			    _index = [_plate,_garage] call ZP_fnc_findIndex;
			    if(_index != -1) then
			    {
			        _garage deleteAt _index;
				    profileNamespace setVariable[format["ZP_Garage_%1",_uid],_garage];
				    saveProfileNamespace;
			    };
		    } else {
			    private _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
			    {
				    format["DELETE FROM ZP_Vehicles WHERE PID = '%1' AND Plate = '%2'",_uid,_plate];
			    } else {
				format["ZP_vehicleDelete:%1:%2",_uid,_plate];
			    };
			
			    [1,_query] call ZP_fnc_asyncCall;
		    };
		
		    deleteVehicle _x;
	    };
    } forEach _all;
	
	true;
};

while{true} do
{
    uiSleep (getNumber(getMissionConfig "CfgClient" >> "vehiclesCleanupPeriod") * 60);
    [] spawn _cleanup;
};
