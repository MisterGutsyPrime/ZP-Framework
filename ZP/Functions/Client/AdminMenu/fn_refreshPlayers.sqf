#include "ZP_Macros.h"
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
private["_all","_ind"];

disableSerialization;

ZP_TEMP = [];

lbClear ZP_ADM_LIST;
ZP_ADM_REFRESH ctrlEnable false;
	
_all = (allPlayers - entities "HeadlessClient_F") select {alive _x};

ZP_ADM_COUNT ctrlSetText format[(localize "STR_ZP_DLG_PLAYER_COUNT"),(count _all)];
	
if((count _all) != 0) then
{
    ZP_TEMP = _all;
	
	{
		_ind = ZP_ADM_LIST lbAdd format[(localize "STR_ZP_DLG_AM_LIST"),(name _x),(getPlayerUID _x)];
		ZP_ADM_LIST lbSetData [_ind,(getPlayerUID _x)];
		ZP_ADM_LIST lbSetValue [_ind,_forEachIndex];
	} forEach _all;
	
	{
	    _x ctrlEnable true;
	} forEach [ZP_ADM_COMBO,ZP_ADM_KILL,ZP_ADM_RANK,ZP_ADM_XP,ZP_ADM_KILLS,ZP_ADM_CASH,ZP_ADM_BANK,ZP_ADM_XP_EDIT,ZP_ADM_KILLS_EDIT,ZP_ADM_CASH_EDIT,ZP_ADM_BANK_EDIT,ZP_ADM_XP_SUB,ZP_ADM_KILLS_SUB,ZP_ADM_CASH_SUB,ZP_ADM_BANK_SUB,ZP_ADM_XP_ADD,ZP_ADM_KILLS_ADD,ZP_ADM_CASH_ADD,ZP_ADM_BANK_ADD];
} else {
    _ind = ZP_ADM_LIST lbAdd (localize "STR_ZP_NOTHING_TO_DISPLAY");
	ZP_ADM_LIST lbSetData[_ind,(localize "STR_ZP_NONE")];
	
	{
	    _x ctrlEnable false;
	} forEach [ZP_ADM_COMBO,ZP_ADM_KILL,ZP_ADM_RANK,ZP_ADM_XP,ZP_ADM_KILLS,ZP_ADM_CASH,ZP_ADM_BANK,ZP_ADM_XP_EDIT,ZP_ADM_KILLS_EDIT,ZP_ADM_CASH_EDIT,ZP_ADM_BANK_EDIT,ZP_ADM_XP_SUB,ZP_ADM_KILLS_SUB,ZP_ADM_CASH_SUB,ZP_ADM_BANK_SUB,ZP_ADM_XP_ADD,ZP_ADM_KILLS_ADD,ZP_ADM_CASH_ADD,ZP_ADM_BANK_ADD];
};

ZP_ADM_REFRESH ctrlEnable true;
ZP_ADM_LIST lbSetCurSel 0;

true;
