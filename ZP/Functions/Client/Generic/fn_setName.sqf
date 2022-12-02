/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

params["_name","_update"];

if (_update) then {
    ZP_CLIENT = [3,(getPlayerUID player),_name];
	if(isServer) then
	{
	    [ZP_CLIENT] call ZP_fnc_clientToServer;
	} else {
	    player setVariable [format["ZP_Name_%1",(getPlayerUID player)],_name];
	};
	ZP_CLIENT = nil;
};

true;