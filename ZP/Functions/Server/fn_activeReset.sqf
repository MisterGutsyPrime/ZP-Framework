/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

if(!ZP_SAVING_EXTDB) then
{
    if(!isNil {parsingNamespace getVariable "ZP_Profile"}) then
	{
	    private _vars = parsingNamespace getVariable "ZP_Profile";
	
        {
	        if(["hg_garage_",_x,false] call BIS_fnc_inString) then
	        {
		        _vehicles = profileNamespace getVariable _x;
		
		        if((count _vehicles) != 0) then
		        {
			        {
				        (_vehicles select _forEachIndex) set [3,0];
			        } forEach _vehicles;
		        };
		
		        profileNamespace setVariable [_x,_vehicles];
		        saveProfileNamespace;
            };
        } forEach _vars;
	};
} else {
    private _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
	{
	    "UPDATE ZP_Vehicles SET Active = 0";
	} else {
	    "ZP_activeReset";
	};
	
	[1,_query] call ZP_fnc_asyncCall;
};
	
true;
