#include "ZP_Macros.h"
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_mode","_value"];

disableSerialization;

if(_mode in [0,1,2,3]) then
{
    _value = [(ctrlText ZP_ADM_XP_EDIT),(ctrlText ZP_ADM_KILLS_EDIT),(ctrlText ZP_ADM_CASH_EDIT),(ctrlText ZP_ADM_BANK_EDIT)] select _mode;
	if(_value isEqualTo "") exitWith {hint (localize "STR_ZP_VALUE_EMPTY");};
	if(!([_value] call ZP_fnc_isNumeric)) exitWith {hint (localize "STR_ZP_NOT_A_NUMBER");};
	
	_value = parseNumber _value;
	if(_value <= 0) exitWith {hint (localize "STR_ZP_NEGATIVE_OR_ZERO");};
};

switch(_mode) do
{
	// Set XP
	case 0:
	{
	    if(!ZP_XP_ENABLED) exitWith {hint (localize "STR_ZP_DLG_XP_DISABLED");};
		
		if(cbChecked ZP_ADM_XP_SUB) then
		{
		    [_value,1] remoteExecCall ["ZP_fnc_addOrSubXP",ZP_OBJECT,false];
		} else {
		    [_value,0] remoteExecCall ["ZP_fnc_addOrSubXP",ZP_OBJECT,false];
		};
		
		ZP_ADM_XP_EDIT ctrlSetText "1";
	};
	// Set kills
	case 1:
	{
	    if(!ZP_KILL_COUNT_ENABLED) exitWith {hint (localize "STR_ZP_DLG_KILLS_DISABLED");};
	   
		if(cbChecked ZP_ADM_KILLS_SUB) then
		{
		    [1,_value] remoteExecCall ["ZP_fnc_addOrSubKills",ZP_OBJECT,false];
		} else {
		    [0,_value] remoteExecCall ["ZP_fnc_addOrSubKills",ZP_OBJECT,false];
		};
		
		ZP_ADM_KILLS_EDIT ctrlSetText "1";
	};
	// Set cash
	case 2:
	{
		if(cbChecked ZP_ADM_CASH_SUB) then
		{
		    [_value,1] remoteExecCall ["ZP_fnc_addOrSubCash",ZP_OBJECT,false];
		} else {
		    [_value,0] remoteExecCall ["ZP_fnc_addOrSubCash",ZP_OBJECT,false];
		};
		
		ZP_ADM_CASH_EDIT ctrlSetText "1";
	};
	// Set bank
	case 3:
	{
		if(cbChecked ZP_ADM_BANK_SUB) then
		{
		    [_value,1,1] remoteExecCall ["ZP_fnc_addOrSubCash",ZP_OBJECT,false];
		} else {
		    [_value,0,1] remoteExecCall ["ZP_fnc_addOrSubCash",ZP_OBJECT,false];
		};
		
		ZP_ADM_BANK_EDIT ctrlSetText "1";
	};
	// Kill
	case 4:
	{
	    ZP_OBJECT setDamage 1;
		if(ZP_OBJECT != player) then
		{
		    [(localize "STR_ZP_KILLED_BY_ADMIN")] remoteExecCall ["hint",ZP_OBJECT,false];
		};
	};
	// Set rank
	case 5:
	{
	    private _rank = ZP_ADM_COMBO lbData (lbCurSel ZP_ADM_COMBO);
		[ZP_OBJECT,_rank] remoteExecCall ["ZP_fnc_setRank",ZP_OBJECT,false];
	};
	// Add UID to whitelist
	case 6:
	{
	    private _uid = ctrlText ZP_WL_UID_EDIT;
		if(_uid isEqualTo "") exitWith {hint (localize "STR_ZP_DLG_WL_UID_EMPTY");};
		if(!([_uid] call ZP_fnc_isNumeric)) exitWith {hint (localize "STR_ZP_DLG_WL_UID_NOT_NUMBER");};
		
		private _length = count _uid;
		if(_length != 17) exitWith {hint format[(localize "STR_ZP_DLG_WL_UID_NOT_VALID"),_length];};
		
		private["_val","_sel"];
		_val = ZP_WL_SIDE_COMBO lbValue (lbCurSel ZP_WL_SIDE_COMBO);
		_sel = ZP_WHITELIST select _val;
		if(_uid in _sel) exitWith {hint (localize "STR_ZP_DLG_WL_UID_ALREADY");};
		
		ZP_WL_UID_LIST ctrlEnable false;
		ZP_WL_SIDE_COMBO ctrlEnable false;
		ZP_WL_INFO_TEXT ctrlShow true;
		ZP_WL_UID_ADD ctrlEnable false; 
		ZP_WL_UID_REMOVE ctrlEnable false;
		
		hint format[(localize "STR_ZP_DLG_WL_ADDED"),_uid,(ZP_WL_SIDE_COMBO lbText (lbCurSel ZP_WL_SIDE_COMBO))];
		[(ZP_WL_SIDE_COMBO lbData (lbCurSel ZP_WL_SIDE_COMBO)),(ZP_WL_SIDE_COMBO lbValue (lbCurSel ZP_WL_SIDE_COMBO)),_uid] remoteExecCall ["ZP_fnc_updateWhitelist",2,false];
	};
	// Remove UID from whitelist
	case 7:
	{
	    ZP_WL_UID_LIST ctrlEnable false;
		ZP_WL_SIDE_COMBO ctrlEnable false;
	    ZP_WL_INFO_TEXT ctrlShow true;
		ZP_WL_UID_ADD ctrlEnable false; 
		ZP_WL_UID_REMOVE ctrlEnable false;
		
		hint format[(localize "STR_ZP_DLG_WL_REMOVED"),(ZP_WL_UID_LIST lbData (lbCurSel ZP_WL_UID_LIST)),(ZP_WL_SIDE_COMBO lbText (lbCurSel ZP_WL_SIDE_COMBO))];
		[(ZP_WL_SIDE_COMBO lbData (lbCurSel ZP_WL_SIDE_COMBO)),(ZP_WL_SIDE_COMBO lbValue (lbCurSel ZP_WL_SIDE_COMBO)),(ZP_WL_UID_LIST lbData (lbCurSel ZP_WL_UID_LIST))] remoteExecCall ["ZP_fnc_updateWhitelist",2,false];
	};
};

if(!(_mode in [6,7])) then
{
    [] call ZP_fnc_refreshPlayers;
};

true;
