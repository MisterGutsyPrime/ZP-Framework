/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_unit","_targetContainer","_secContainer",["_handled",false]];

if(ZP_PLAYER_INVENTORY_SAVE_ENABLED) then
{
    [player] remoteExecCall ["ZP_fnc_getGear",2,false];
};

if(ZP_PLAYER_FREQUENCY_SAVE_ENABLED) then
{    
    _SR = [((call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings) select 2, 0, 3] call BIS_fnc_subSelect;
    _LR = [((call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings) select 2, 0, 3] call BIS_fnc_subSelect;

    [_LR,_SR] remoteExecCall ["ZP_fnc_getFreq",2,false];
};

if(ZP_VEHICLE_INVENTORY_SAVE_ENABLED) then
{
    if((_targetContainer isKindOf "LandVehicle") OR (_targetContainer isKindOf "Ship") OR (_targetContainer isKindOf "Air") OR (_targetContainer isKindOf "Submarine")) then
    {
        [_targetContainer] remoteExecCall ["ZP_fnc_getInventory",2,false];
    };
};

_handled;
