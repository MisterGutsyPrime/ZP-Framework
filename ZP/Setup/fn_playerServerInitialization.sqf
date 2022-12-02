#define ADMINS getArray(getMissionConfig "CfgClient" >> "admins")
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_player","_uid","_result"];

_uid = getPlayerUID _player;
private _ZPgear = [["ws_m4a1_blockII_grip2_c","rhsusf_acc_SF3P556","KA_ANPEQ15_Black_IR","rhsusf_acc_su230_mrds",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_m1911a1","","","",["rhsusf_mag_7x45acp_MHP",7],[],""],["VSM_OGA_Crye_SS_od_Camo",[["ACE_epinephrine",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_EarPlugs",1],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_IR_Strobe_Item",1],["ACE_adenosine",5]]],["rhsusf_mbav_light",[["ACE_EntrenchingTool",1],["ItemcTabHCam",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_microDAGR",1],["JAS_GPNVG18_blk",1],["ACE_SpraypaintRed",1],["ACE_bodyBag",1],["rhs_mag_30Rnd_556x45_Mk262_PMAG",5,30]]],[],"H_Hebontes_Beret04_AAF","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152_3","ItemCompass","",""]];
private _ZPFreq = ["100","101","102","103","60","60.5","70","70.5"];

if(ZP_SAVING_EXTDB) then
{
    _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
	{
	    format["SELECT CASE WHEN EXISTS (SELECT PID FROM ZP_PlayersM WHERE PID = '%1') THEN 'true' ELSE 'false' END",_uid];
	} else {
	    format["ZP_playerExist:%1",_uid];
	};
	
	_exists = [2,_query,false] call ZP_fnc_asyncCall;
	_exists = _exists select 0;
	
	if(_exists) then
	{
	    _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
		{
		    format["SELECT Gear, Name, Insignia, Role, Frequency FROM ZP_PlayersM WHERE PID = '%1'",_uid];
		} else {
		    format["ZP_playerSelect:%1",_uid];
		};
		
		_result = [2,_query,false] call ZP_fnc_asyncCall;
	} else {
	    _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
		{
		    format["INSERT INTO ZP_PlayersM (PID, Gear, Name, Insignia, Role, Frequency) VALUES('%1','%2','%3','%4','%5','%6')",_uid,_ZPgear,(name _player),0,["0","4"],_ZPFreq];
		} else {
		    format["ZP_playerInsert:%1:%2:%3:%4:%5:%6",_uid,_ZPgear,(name _player),0,["0","4"],_ZPFreq];
		};
		
		[1,_query] call ZP_fnc_asyncCall;
		
		_result = 
		[
			_ZPgear,
			(name _player),
			0,
			["0","4"],
			_ZPFreq
		];
	};
};

//NCO, Medic, Sniper, Rifleman, Piolt, Crew, Grenidere, Enginere, Navy
//1,2,3,4,5,6,7,8,9

if((getNumber(getMissionConfig "CfgClient" >> "enablePlayerInventorySave")) isEqualTo 1) then
{
    private "_gear";
	
    if(ZP_SAVING_EXTDB) then
	{
	    _gear = _result select 0;
		profileNamespace setVariable ["ZP_Menu", _gear];
        saveProfileNamespace;
	} else {
	    _gear = profileNamespace getVariable format["ZP_Gear_%1",_uid];
		if(isNil "_gear") then
		{
		    _gear = getUnitLoadout _player;
		    profileNamespace setVariable [format["ZP_Gear_%1",_uid],_gear];
            saveProfileNamespace;
			profileNamespace setVariable ["ZP_Menu", _gear];
            saveProfileNamespace;
		};
	};
	[_gear] remoteExecCall ["ZP_fnc_parseGear",(owner _player),false];
};

if((getNumber(getMissionConfig "CfgClient" >> "enableNameCheck")) isEqualTo 1) then
{
	private ["_name","_ranks","_check","_abrev"];	
	
	if(ZP_SAVING_EXTDB) then
	{
		_name = _result select 1;
	} else {
		_name = profileNamespace getVariable format["ZP_Name_%1",_uid];
		if(isNil "_name") then
		{
			_name = name _player;
			profileNamespace setVariable [format["ZP_Name_%1",_uid],_name];
			saveProfileNamespace;
		};
	};
	[_name,true] remoteExecCall ["ZP_fnc_setName",(owner _player),false];
	_ranks = ["1LT","2LT","Sgt","Cpl","Spc","Pfc","Pv2","Pvt","Rct"];
	_check = _name splitString ".";_abrev = _check select 0;
	if (_abrev in _ranks) then {} else {titleText ["<t color='#ff0000' size='5'>Please change your profile name!</t><br/>Should be the same as discord", "PLAIN", -1, true, true]};
};

if((getNumber(getMissionConfig "CfgClient" >> "enableInsignia")) isEqualTo 1) then
{
	private "_insignia";
	
	if(ZP_SAVING_EXTDB) then
	{
		_insignia = _result select 2;
		profileNamespace setVariable [format["ZP_Insignia_%1",_uid],_insignia];
        saveProfileNamespace;
	} else {
		_insignia = profileNamespace getVariable format["ZP_Insignia_%1",_uid];
		if(isNil "_insignia") then
		{
			_insignia = 1;
			profileNamespace setVariable [format["ZP_Insignia_%1",_uid],_insignia];
			saveProfileNamespace;
		};
	};
	[_insignia,false] remoteExecCall ["ZP_fnc_setCallsign",(owner _player),false];
};

if((getNumber(getMissionConfig "CfgClient" >> "enableRole")) isEqualTo 1) then
{
    private "_role";
	
    if(ZP_SAVING_EXTDB) then
	{
	    _role = _result select 3;
		profileNamespace setVariable [format["ZP_Role_%1",_uid],_role];
        saveProfileNamespace;
	} else {
	    _role = profileNamespace getVariable format["ZP_Role_%1",_uid];
		if(isNil "_role") then
		{
		    _role = ["0","4"];
		    profileNamespace setVariable [format["ZP_Role_%1",_uid],_role];
            saveProfileNamespace;
		};
	};
	if (hasInterface) then {
		waitUntil {time > 25};
		[_role] remoteExecCall ["ZP_fnc_setRole",(owner _player),false];
	};
};

if((getNumber(getMissionConfig "CfgClient" >> "enableFrequency")) isEqualTo 1) then
{
	private "_frequency";

	if(ZP_SAVING_EXTDB) then
	{
		_frequency = _result select 4;

		if (hasInterface) then {
			waitUntil {time > 25};
			[_frequency] remoteExecCall ["ZP_fnc_setFreq",(owner _player),false];
		};
	} else {
		_frequency = profileNamespace getVariable format["ZP_Frequency_%1",_uid];
		if(isNil "_frequency") then
		{
			_frequency = _ZPFreq;
			profileNamespace setVariable [format["ZP_Frequency_%1",_uid],_frequency];
			saveProfileNamespace;
		};

		if (hasInterface) then {
			waitUntil {time > 25};
			[_frequency] remoteExecCall ["ZP_fnc_setFreq",(owner _player),false];
		};
	};
};

if((getNumber(getMissionConfig "CfgClient" >> "enableTickets")) isEqualTo 1) then {
	private _respawns = (getNumber(getMissionConfig "CfgClient" >> "ZPrespawnTickets"));
	[_player, _respawns] call BIS_fnc_respawnTickets;
};