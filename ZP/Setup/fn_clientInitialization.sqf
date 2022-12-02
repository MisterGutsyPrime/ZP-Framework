/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

/*
    Init constants
*/

ZP_PLAYER_FREQUENCY_SAVE_ENABLED = (getNumber(getMissionConfig "CfgClient" >> "enableFrequency")) isEqualTo 1;
ZP_PLAYER_INVENTORY_SAVE_ENABLED = (getNumber(getMissionConfig "CfgClient" >> "enablePlayerInventorySave")) isEqualTo 1;

ZP_INVENTORY_OPENED_EVH = player addEventHandler["InventoryOpened",{_this call ZP_fnc_inventoryOpened}];
ZP_INVENTORY_CLOSED_EVH = player addEventHandler["InventoryClosed",{_this call ZP_fnc_inventoryClosed}];
player addMPEventHandler ["MPRespawn", {(getMarkerPos ["ZPRespawn", true])}];

[allPlayers, [player]] call ace_spectator_fnc_updateUnits;
[[1], [0]] call ace_spectator_fnc_updateCameraModes;
waitUntil {!isNull (findDisplay 46)};
ZP_KEY_DOWN_EVH = (findDisplay 46) displayAddEventHandler["KeyDown",{_this call ZP_fnc_keyDown}];