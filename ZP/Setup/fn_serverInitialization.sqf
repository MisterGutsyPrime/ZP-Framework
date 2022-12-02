/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

ZP_SAVING_EXTDB = (getText(getMissionConfig "CfgClient" >> "savingMethod")) isEqualTo "extDB";

if(ZP_SAVING_EXTDB) then
{
	if(isNil "extDB3_var_loaded") exitWith 
	{
	    diag_log (localize "STR_ZP_EXTDB_NOT_LOADED");
		ZP_SAVING_EXTDB = false;
	};
	
	if(!([] call extDB3_var_loaded)) exitWith
	{
	    diag_log (localize "STR_ZP_EXTDB_NOT_LOADED");
		ZP_SAVING_EXTDB = false;
	};
	
	ZP_fnc_asyncCall = compileFinal preprocessFileLineNumbers "ZP\Functions\Server\fn_asyncCall.sqf";
	ZP_fnc_extDBInit = compileFinal preprocessFileLineNumbers "ZP\Functions\Server\fn_extDBInit.sqf";
	
	private["_protocol","_ok"];
	
	_protocol = getText(getMissionConfig "CfgClient" >> "extDBProtocol");
	_ok = [getText(getMissionConfig "CfgClient" >> "extDBDatabase"),_protocol,getText(getMissionConfig "CfgClient" >> "extDBCustomFile")] call ZP_fnc_extDBInit;
	
	if(!_ok) exitWith
	{
	    ZP_SAVING_EXTDB = false;
	};
	
	ZP_SAVING_PROTOCOL = _protocol;
};

private "_compile";

{
    _compile = compileFinal preprocessFileLineNumbers (_x select 1);
    missionNamespace setVariable[(_x select 0),_compile];
} forEach 
[
	["ZP_fnc_activeReset","ZP\Functions\Server\fn_activeReset.sqf"],
	["ZP_fnc_cleanup","ZP\Functions\Server\fn_cleanup.sqf"],
	["ZP_fnc_clientToServer","ZP\Functions\Server\fn_clientToServer.sqf"],
	["ZP_fnc_disconnect","ZP\Functions\Server\fn_disconnect.sqf"],
	["ZP_fnc_findIndex","ZP\Functions\Server\fn_findIndex.sqf"],
	["ZP_fnc_getGear","ZP\Functions\Server\fn_getGear.sqf"],
	["ZP_fnc_getInventory","ZP\Functions\Server\fn_getInventory.sqf"],
	["ZP_fnc_getType","ZP\Functions\Server\fn_getType.sqf"],
	["ZP_fnc_setInventory","ZP\Functions\Server\fn_setInventory.sqf"],
	["ZP_fnc_getFreq","ZP\Functions\Server\fn_getFreq.sqf"]
];
