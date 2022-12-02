#include "ZP_Macros.h"
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_ctrl","_index","_sel","_text"];

disableSerialization;

lbClear ZP_ADM_COMBO;
_sel = _ctrl lbData _index;

if(_sel != (localize "STR_ZP_NONE")) then
{
    private["_val","_xpText","_kcText","_ind"];
	
    _val = _ctrl lbValue _index;
	ZP_OBJECT = ZP_TEMP select _val;
	
	_xpText = if(ZP_XP_ENABLED) then
	{
	    format["%1/%2",((ZP_OBJECT getVariable "ZP_XP") select 1),(getNumber(getMissionConfig "CfgClient" >> "ZP_MasterCfg" >> (rank ZP_OBJECT) >> "xpToLvlUp"))];
	} else {
	    (localize "STR_ZP_DISABLED");
	};
	
	_kcText = if(ZP_KILL_COUNT_ENABLED) then 
	{
	    (ZP_OBJECT getVariable "ZP_Kills")
	} else {
	    (localize "STR_ZP_DISABLED")
	};
	
    _text = parseText format
	[
        "<br/>"+
		"<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_UID")+ "</t><br/>"+
		"<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_SIDE")+ "</t><br/>"+
		"<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_RANK")+ "</t><br/>"+
		"<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_XP")+ "</t><br/>"+
	    "<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_CASH")+ "</t><br/>"+
		"<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_BANK")+ "</t><br/>"+ 
	    "<t align='center' size='1'>"+ (localize "STR_ZP_DLG_AM_KILLS")+ "</t>",
		(getPlayerUID ZP_OBJECT),
		(side ZP_OBJECT),
		(rank ZP_OBJECT),
		_xpText,
	    ([(ZP_OBJECT getVariable ZP_CASH_VAR),true] call ZP_fnc_currencyToText),
		([(ZP_OBJECT getVariable ZP_BANK_VAR),true] call ZP_fnc_currencyToText),
		_kcText
	];
	
	{
	    if(_x != (rank ZP_OBJECT)) then
		{
		    _ind = ZP_ADM_COMBO lbAdd _x;
			ZP_ADM_COMBO lbSetData [_ind,_x];
		};
	} forEach ["PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
	
	{
	    (_x select 0) cbSetChecked true;
		(_x select 1) cbSetChecked false;
	} forEach 
	[
	    [ZP_ADM_XP_ADD,ZP_ADM_XP_SUB],
	    [ZP_ADM_KILLS_ADD,ZP_ADM_KILLS_SUB],
	    [ZP_ADM_CASH_ADD,ZP_ADM_CASH_SUB],
	    [ZP_ADM_BANK_ADD,ZP_ADM_BANK_SUB]
	];
	
	ZP_ADM_COMBO lbSetCurSel 0;
} else {
    _text = parseText format
	[
        "<br/>"+
	    "<t align='center' valign='middle' size='1'>"+ (localize "STR_ZP_NOTHING_TO_DISPLAY")+ "</t>"
    ];
};

ZP_ADM_TEXT ctrlSetStructuredText _text;

true;
