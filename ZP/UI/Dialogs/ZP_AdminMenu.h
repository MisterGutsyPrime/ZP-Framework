#include "..\ZP_IDCS.h"
/*
    Author - R00x
	© All Fucks Reserved
	Website - http://zagreusplatoon.com/
*/

class ZP_AdminMenu
{
	idd = ZP_ADM_IDD;
	enableSimulation = true;
	movingEnable = true;
	name = "ZP_AdminMenu";
	onUnload = "ZP_TEMP = nil; ZP_OBJECT = nil";
	
	class ControlsBackground
	{
		class Header: ZP_RscText
		{
			colorBackground[] = {0.4,0.4,0.4,1};
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.28 * safeZoneH + safeZoneY;
			w = 0.37125 * safeZoneW;
			h = 0.044 * safeZoneH;
		};
		
		class Background: ZP_RscText
		{
			colorBackground[] = {0,0,0,0.5};
			x = 0.314375 * safezoneW + safezoneX;
		    y = 0.324 * safeZoneH + safeZoneY;
		    w = 0.37125 * safeZoneW;
		    h = 0.429 * safeZoneH;
		};
		
		class BackgroundFrame: ZP_RscFrame
		{
			x = 0.314375 * safezoneW + safezoneX;
		    y = 0.28 * safeZoneH + safeZoneY;
		    w = 0.37125 * safeZoneW;
		    h = 0.473 * safeZoneH;
		};
		
		class WhiteLine: ZP_RscPicture
		{
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.324 * safeZoneH + safeZoneY;
			w = 0.37125 * safeZoneW;
			h = 0.0022 * safeZoneH;
		};
		
		class MainPicture: ZP_RscPicture
		{
			moving = true;
			text = "ZP\UI\Icons\gear.paa";
			tooltip = "$STR_ZP_DLG_TOOLTIP";
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.28 * safeZoneH + safeZoneY;
			w = 0.0309375 * safeZoneW;
			h = 0.044 * safeZoneH;
		};
		
		class RefreshBtnPicture: ZP_RscPicture
		{
			text = "ZP\UI\Icons\refresh.paa";
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.28 * safeZoneH + safeZoneY;
			w = 0.0309375 * safeZoneW;
			h = 0.044 * safeZoneH;
		};
		
		class KillBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\dead.paa";
			x = 0.438124 * safezoneW + safezoneX;
		};
		
		class SetRankBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\medal.paa";
			x = 0.474218 * safezoneW + safezoneX;
		};
		
		class SetXPBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\xp.paa";
			x = 0.510312 * safezoneW + safezoneX;
		};
		
		class SetKillsBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\gun.paa";
			x = 0.546406 * safezoneW + safezoneX;
		};
		
		class SetCashBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\money.paa";
			x = 0.5825 * safezoneW + safezoneX;
		};
		
		class SetBankBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\bank.paa";
			x = 0.618594 * safezoneW + safezoneX;
		};
		
		class ExitBtnPicture: RefreshBtnPicture
		{
			text = "ZP\UI\Icons\close.paa";
			x = 0.654688 * safezoneW + safezoneX;
		};
		
		class InfosText: ZP_RscStructuredText
		{
			idc = ZP_ADM_TEXT_IDC;
			colorBackground[] = {0,0,0,0.5};
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.335 * safeZoneH + safeZoneY;
			w = 0.175313 * safeZoneW;
			h = 0.242 * safeZoneH;
		};
		
		class TextFrame: ZP_RscFrame
		{
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.335 * safeZoneH + safeZoneY;
			w = 0.175313 * safeZoneW;
			h = 0.242 * safeZoneH;
		};
		
		class PlayerCount: ZP_RscText
		{
			idc = ZP_ADM_COUNT_IDC;
			style = "0x02";
			shadow = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			x = 0.319531 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class RankIcon: ZP_RscPicture
		{
			text = "ZP\UI\Icons\medal.paa";
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.588 * safeZoneH + safeZoneY;
			w = 0.020625 * safeZoneW;
			h = 0.022 * safeZoneH;
		};
		
		class XPIcon: RankIcon
		{
			text = "ZP\UI\Icons\xp.paa";
			y = 0.621 * safeZoneH + safeZoneY;
		};
		
		class KillsIcon: RankIcon
		{
			text = "ZP\UI\Icons\gun.paa";
			y = 0.654 * safeZoneH + safeZoneY;
		};
		
		class CashIcon: RankIcon
		{
			text = "ZP\UI\Icons\money.paa";
			y = 0.687 * safeZoneH + safeZoneY;
		};
		
		class BankIcon: RankIcon
		{
			text = "ZP\UI\Icons\bank.paa";
			y = 0.72 * safezoneH + safezoneY;
		};
		
		class WhitelistHeader: ZP_RscText
		{
			show = 0;
			idc = ZP_WL_HEADER_IDC;
			colorBackground[] = {0.4,0.4,0.4,1};
			x = 0.113281 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.044 * safezoneH;
		};
		
		class WhitelistHeaderText: ZP_RscText
		{
			show = 0;
			idc = ZP_WL_HEADER_TEXT_IDC;
			text = "$STR_ZP_DLG_WL_TEXT";
			x = 0.113281 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.044 * safezoneH;
		};
		
		class WhitelistBackground: ZP_RscText
		{
			show = 0;
			idc = ZP_WL_BACK_IDC;
			colorBackground[] = {0,0,0,0.5};
			x = 0.113281 * safezoneW + safezoneX;
		    y = 0.324 * safezoneH + safezoneY;
		    w = 0.195937 * safezoneW;
		    h = 0.429 * safezoneH;
		};
		
		class WhitelistBackgroundFrame: ZP_RscFrame
		{
			show = 0;
			idc = ZP_WL_BACK_FRAME_IDC;
			x = 0.113281 * safezoneW + safezoneX;
		    y = 0.28 * safezoneH + safezoneY;
		    w = 0.195937 * safezoneW;
		    h = 0.473 * safeZoneH;
		};
		
		class WhitelistWhiteLine: ZP_RscPicture
		{
			show = 0;
			idc = ZP_WL_LINE_IDC;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.113281 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.0022 * safezoneH;
		};
		
		class AddUIDBtnPicture: RefreshBtnPicture
		{
			show = 0;
			idc = ZP_WL_UID_ADD_PIC_IDC;
			text = "ZP\UI\Icons\add_bis.paa";
			x = 0.242187 * safezoneW + safezoneX;
		};
		
		class RemoveBtnPicture: RefreshBtnPicture
		{
			show = 0;
			idc = ZP_WL_UID_REMOVE_PIC_IDC;
			text = "ZP\UI\Icons\sub_bis.paa";
			x = 0.278281 * safezoneW + safezoneX;
		};
		
		class WhitelistInfo: ZP_RscText
		{
			show = 0;
			idc = ZP_WL_INFO_TEXT_IDC;
			text = "$STR_ZP_DLG_WL_INFO_TEXT";
			style = "0x02";
			shadow = 0;
			x = 0.118437 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.341 * safezoneH;
		};
	};
	
	class Controls
	{
		class PlayerList: ZP_RscListBox
		{
			idc = ZP_ADM_LIST_IDC;
			style = "0x02 + 16";
			rowHeight = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			onLBSelChanged = "_this call ZP_fnc_adminMenuListChanged";
			x = 0.319531 * safeZoneW + safeZoneX;
			y = 0.357 * safeZoneH + safeZoneY;
			w = 0.180469 * safeZoneW;
			h = 0.385 * safeZoneH;
		};
		
		class RankCombo: ZP_RscCombo
		{
			idc = ZP_ADM_COMBO_IDC;
			onLBSelChanged = "";
			x = 0.530937 * safeZoneW + safeZoneX;
			y = 0.588 * safeZoneH + safeZoneY;
			w = 0.149531 * safeZoneW;
			h = 0.022 * safeZoneH;
		};
		
		class RefreshButton: ZP_RscButtonInvisible
		{
			idc = ZP_ADM_REFRESH_IDC;
			tooltip = "$STR_ZP_DLG_AM_REFRESH_TOOLTIP";
			onButtonClick = "[] call ZP_fnc_refreshPlayers";
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.28 * safeZoneH + safeZoneY;
			w = 0.0309375 * safeZoneW;
			h = 0.044 * safeZoneH;
		};
		
		class KillButton: RefreshButton
		{
			idc = ZP_ADM_KILL_IDC;
			tooltip = "$STR_ZP_DLG_AM_KILL_TOOLTIP";
			onButtonClick = "[4] call ZP_fnc_adminMenuBtns";
			x = 0.438124 * safezoneW + safezoneX;
		};
		
		class SetRankButton: RefreshButton
		{
			idc = ZP_ADM_RANK_IDC;
			tooltip = "$STR_ZP_DLG_AM_RANK_TOOLTIP";
			onButtonClick = "[5] call ZP_fnc_adminMenuBtns";
			x = 0.474218 * safezoneW + safezoneX;
		};
		
		class SetXPButton: RefreshButton
		{
			idc = ZP_ADM_XP_IDC;
			tooltip = "$STR_ZP_DLG_AM_XP_TOOLTIP";
			onButtonClick = "[0] call ZP_fnc_adminMenuBtns";
			x = 0.510312 * safezoneW + safezoneX;
		};
		
		class SetKillsButton: RefreshButton
		{
			idc = ZP_ADM_KILLS_IDC;
			tooltip = "$STR_ZP_DLG_AM_KILLS_TOOLTIP";
			onButtonClick = "[1] call ZP_fnc_adminMenuBtns";
			x = 0.546406 * safezoneW + safezoneX;
		};
		
		class SetCashButton: RefreshButton
		{
			idc = ZP_ADM_CASH_IDC;
			tooltip = "$STR_ZP_DLG_AM_CASH_TOOLTIP";
			onButtonClick = "[2] call ZP_fnc_adminMenuBtns";
			x = 0.5825 * safezoneW + safezoneX;
		};
		
		class SetBankButton: RefreshButton
		{
			idc = ZP_ADM_BANK_IDC;
			tooltip = "$STR_ZP_DLG_AM_BANK_TOOLTIP";
			onButtonClick = "[3] call ZP_fnc_adminMenuBtns";
			x = 0.618594 * safezoneW + safezoneX;
		};
		
		class XPEdit: ZP_RscEdit
		{
			idc = ZP_ADM_XP_EDIT_IDC;
			style = "0x02 + 0x40";
			text = "1";
			x = 0.551562 * safeZoneW + safeZoneX;
			y = 0.621 * safeZoneH + safeZoneY;
			w = 0.108281 * safeZoneW;
			h = 0.022 * safeZoneH;
		};
		
		class KillsEdit: XPEdit
		{
			idc = ZP_ADM_KILLS_EDIT_IDC;
			y = 0.654 * safeZoneH + safeZoneY;
		};
		
		class CashEdit: XPEdit
		{
			idc = ZP_ADM_CASH_EDIT_IDC;
			y = 0.687 * safeZoneH + safeZoneY;
		};
		
		class BankEdit: XPEdit
		{
			idc = ZP_ADM_BANK_EDIT_IDC;
			y = 0.72 * safezoneH + safezoneY;
		};
		
		class SubXPBox: ZP_RscCheckbox
		{
			idc = ZP_ADM_XP_SUB_IDC;
			tooltip = "$STR_ZP_DLG_AM_SUB_TOOLTIP";
			onCheckedChanged = "_this call ZP_fnc_checkboxChanged";
			x = 0.530937 * safeZoneW + safeZoneX;
			y = 0.621 * safeZoneH + safeZoneY;
			w = 0.0154688 * safeZoneW;
			h = 0.022 * safeZoneH;
		};
		
		class SubKillsBox: SubXPBox
		{
			idc = ZP_ADM_KILLS_SUB_IDC;
			y = 0.654 * safeZoneH + safeZoneY;
		};
		
		class SubCashBox: SubXPBox
		{
			idc = ZP_ADM_CASH_SUB_IDC;
			y = 0.687 * safeZoneH + safeZoneY;
		};
		
		class SubBankBox: SubXPBox
		{
			idc = ZP_ADM_BANK_SUB_IDC;
			y = 0.72 * safezoneH + safezoneY;
		};
		
		class AddXPBox: SubXPBox
		{
			idc = ZP_ADM_XP_ADD_IDC;
			tooltip = "$STR_ZP_DLG_AM_ADD_TOOLTIP";
			x = 0.665 * safeZoneW + safeZoneX;
		};
		
		class AddKillsBox: AddXPBox
		{
			idc = ZP_ADM_KILLS_ADD_IDC;
			y = 0.654 * safeZoneH + safeZoneY;
		};
		
		class AddCashBox: AddXPBox
		{
			idc = ZP_ADM_CASH_ADD_IDC;
			y = 0.687 * safeZoneH + safeZoneY;
		};
		
		class AddBankBox: AddXPBox
		{
			idc = ZP_ADM_BANK_ADD_IDC;
			y = 0.72 * safezoneH + safezoneY;
		};
		
		class ExitButton: ZP_RscButtonInvisible
		{
			tooltip = "$STR_ZP_DLG_CLOSE_TOOLTIP";
			onButtonClick = "closeDialog 0";
			x = 0.654688 * safezoneW + safezoneX;
			y = 0.28 * safeZoneH + safeZoneY;
			w = 0.0309375 * safeZoneW;
			h = 0.044 * safeZoneH;
		};
		
		class WhitelistSide: ZP_RscCombo
		{
			show = 0;
			idc = ZP_WL_SIDE_COMBO_IDC;
			onLBSelChanged = "[] call ZP_fnc_refreshWhitelist";
			x = 0.118437 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class WhitelistList: ZP_RscListBox
		{
			show = 0;
			idc = ZP_WL_UID_LIST_IDC;
			rowHeight = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			x = 0.118437 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.341 * safezoneH;
		};
		
		class WhitelistUID: ZP_RscEdit
		{
			show = 0;
			idc = ZP_WL_UID_EDIT_IDC;
			maxChars = 17;
			x = 0.118437 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class AddUIDButton: RefreshButton
		{
			show = 0;
			idc = ZP_WL_UID_ADD_IDC;
			tooltip = "$STR_ZP_DLG_WL_ADD_UID_TOOLTIP";
			onButtonClick = "[6] call ZP_fnc_adminMenuBtns";
			x = 0.242187 * safezoneW + safezoneX;
		};
		
		class RemoveButton: RefreshButton
		{
			show = 0;
			idc = ZP_WL_UID_REMOVE_IDC;
			tooltip = "$STR_ZP_DLG_WL_REMOVE_TOOLTIP";
			onButtonClick = "[7] call ZP_fnc_adminMenuBtns";
			x = 0.278281 * safezoneW + safezoneX;
		};
	};
};
