/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_vehicle","_owner","_uid","_plate","_inventory"];

_owner = _vehicle getVariable "ZP_Owner";
_uid = _owner select 0;
_plate = _owner select 1;
_inventory = [(getItemCargo _vehicle),(getMagazineCargo _vehicle),(getWeaponCargo _vehicle),(getBackpackCargo _vehicle)];

if(!ZP_SAVING_EXTDB) then
{
    profileNamespace setVariable[format["ZP_Inventory_%1_%2",_uid,_plate],_inventory];
    saveProfileNamespace;
} else {
    private _query = if(ZP_SAVING_PROTOCOL isEqualTo "SQL") then
	{
	    format["UPDATE ZP_Vehicles SET Inventory = '%1' WHERE PID = '%2' AND Plate = '%3'",_inventory,_uid,_plate];
	} else {
	    format["ZP_vehicleUpdateInventory:%1:%2:%3",_inventory,_uid,_plate];
	};
	
    [1,_query] call ZP_fnc_asyncCall;
};
	
true;
