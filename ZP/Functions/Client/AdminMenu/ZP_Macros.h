#include "..\..\..\UI\ZP_IDCS.h"
/*
    Author - R00x
    © All Fucks Reserved
	Website - http://zagreusplatoon.com/
*/

#define ZP_ADM_DISP               findDisplay ZP_ADM_IDD  
#define ZP_ADM_TEXT               (ZP_ADM_DISP displayCtrl ZP_ADM_TEXT_IDC)
#define ZP_ADM_COUNT              (ZP_ADM_DISP displayCtrl ZP_ADM_COUNT_IDC)
#define ZP_ADM_LIST               (ZP_ADM_DISP displayCtrl ZP_ADM_LIST_IDC)
#define ZP_ADM_COMBO              (ZP_ADM_DISP displayCtrl ZP_ADM_COMBO_IDC) 
#define ZP_ADM_REFRESH            (ZP_ADM_DISP displayCtrl ZP_ADM_REFRESH_IDC) 
#define ZP_ADM_KILL               (ZP_ADM_DISP displayCtrl ZP_ADM_KILL_IDC) 
#define ZP_ADM_RANK               (ZP_ADM_DISP displayCtrl ZP_ADM_RANK_IDC)
#define ZP_ADM_XP                 (ZP_ADM_DISP displayCtrl ZP_ADM_XP_IDC)
#define ZP_ADM_KILLS              (ZP_ADM_DISP displayCtrl ZP_ADM_KILLS_IDC)
#define ZP_ADM_CASH               (ZP_ADM_DISP displayCtrl ZP_ADM_CASH_IDC) 
#define ZP_ADM_BANK               (ZP_ADM_DISP displayCtrl ZP_ADM_BANK_IDC) 
#define ZP_ADM_XP_EDIT            (ZP_ADM_DISP displayCtrl ZP_ADM_XP_EDIT_IDC)
#define ZP_ADM_KILLS_EDIT         (ZP_ADM_DISP displayCtrl ZP_ADM_KILLS_EDIT_IDC)
#define ZP_ADM_CASH_EDIT          (ZP_ADM_DISP displayCtrl ZP_ADM_CASH_EDIT_IDC)
#define ZP_ADM_BANK_EDIT          (ZP_ADM_DISP displayCtrl ZP_ADM_BANK_EDIT_IDC)
#define ZP_ADM_XP_SUB             (ZP_ADM_DISP displayCtrl ZP_ADM_XP_SUB_IDC)
#define ZP_ADM_KILLS_SUB          (ZP_ADM_DISP displayCtrl ZP_ADM_KILLS_SUB_IDC)
#define ZP_ADM_CASH_SUB           (ZP_ADM_DISP displayCtrl ZP_ADM_CASH_SUB_IDC)
#define ZP_ADM_BANK_SUB           (ZP_ADM_DISP displayCtrl ZP_ADM_BANK_SUB_IDC)
#define ZP_ADM_XP_ADD             (ZP_ADM_DISP displayCtrl ZP_ADM_XP_ADD_IDC)
#define ZP_ADM_KILLS_ADD          (ZP_ADM_DISP displayCtrl ZP_ADM_KILLS_ADD_IDC)
#define ZP_ADM_CASH_ADD           (ZP_ADM_DISP displayCtrl ZP_ADM_CASH_ADD_IDC)
#define ZP_ADM_BANK_ADD           (ZP_ADM_DISP displayCtrl ZP_ADM_BANK_ADD_IDC)

#define ZP_WL_HEADER              (ZP_ADM_DISP displayCtrl ZP_WL_HEADER_IDC)
#define ZP_WL_HEADER_TEXT         (ZP_ADM_DISP displayCtrl ZP_WL_HEADER_TEXT_IDC)
#define ZP_WL_BACK                (ZP_ADM_DISP displayCtrl ZP_WL_BACK_IDC)
#define ZP_WL_BACK_FRAME          (ZP_ADM_DISP displayCtrl ZP_WL_BACK_FRAME_IDC)
#define ZP_WL_LINE                (ZP_ADM_DISP displayCtrl ZP_WL_LINE_IDC)
#define ZP_WL_UID_ADD_PIC         (ZP_ADM_DISP displayCtrl ZP_WL_UID_ADD_PIC_IDC)
#define ZP_WL_UID_REMOVE_PIC      (ZP_ADM_DISP displayCtrl ZP_WL_UID_REMOVE_PIC_IDC)
#define ZP_WL_INFO_TEXT           (ZP_ADM_DISP displayCtrl ZP_WL_INFO_TEXT_IDC)
#define ZP_WL_SIDE_COMBO          (ZP_ADM_DISP displayCtrl ZP_WL_SIDE_COMBO_IDC)
#define ZP_WL_UID_LIST            (ZP_ADM_DISP displayCtrl ZP_WL_UID_LIST_IDC)
#define ZP_WL_UID_EDIT            (ZP_ADM_DISP displayCtrl ZP_WL_UID_EDIT_IDC)
#define ZP_WL_UID_ADD             (ZP_ADM_DISP displayCtrl ZP_WL_UID_ADD_IDC)
#define ZP_WL_UID_REMOVE          (ZP_ADM_DISP displayCtrl ZP_WL_UID_REMOVE_IDC)
