#include "ZP_Macros.h"
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

createDialog "ZP_AdminMenu";

disableSerialization;

ZP_OBJECT = objNull;

[] call ZP_fnc_refreshPlayers;

if(ZP_WHITELISTED_ENABLED) then
{
    {
	    _x ctrlShow true;
	} forEach [ZP_WL_HEADER,ZP_WL_HEADER_TEXT,ZP_WL_BACK,ZP_WL_BACK_FRAME,ZP_WL_LINE,ZP_WL_UID_ADD_PIC,ZP_WL_UID_REMOVE_PIC,ZP_WL_SIDE_COMBO,ZP_WL_UID_LIST,ZP_WL_UID_EDIT,ZP_WL_UID_ADD,ZP_WL_UID_REMOVE];

	lbClear ZP_WL_SIDE_COMBO;
	
	private["_sides","_side","_ind"];
	
	_sides = getArray(getMissionConfig "CfgClient" >> "whitelistSides");
	
	{
		_side = switch(toLower _x) do
		{
		    case "civilian": {(localize "STR_ZP_DLG_WL_SIDE_CIV")};
		    case "west": {(localize "STR_ZP_DLG_WL_SIDE_WEST")};
		    case "resistance": {(localize "STR_ZP_DLG_WL_SIDE_GUER")};
		    case "east": {(localize "STR_ZP_DLG_WL_SIDE_EAST")};
	    };
        _ind = ZP_WL_SIDE_COMBO lbAdd _side;
	    ZP_WL_SIDE_COMBO lbSetData [_ind,(toLower _x)];
	    ZP_WL_SIDE_COMBO lbSetValue [_ind,_forEachIndex];
    } forEach _sides;
	
	ZP_WL_SIDE_COMBO lbSetCurSel 0;
};

true;
