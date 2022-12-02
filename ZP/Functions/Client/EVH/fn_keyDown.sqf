#define ADMINS getArray(getMissionConfig "CfgClient" >> "admins")
/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params
[
    "_ctrl","_dikCode","_shift","_ctrlKey","_alt",
    ["_handled",false],
    ["_ulKey",getNumber(getMissionConfig "CfgClient" >> "lockUnlockKey")],
	["_admKey",getNumber(getMissionConfig "CfgClient" >> "adminKey")],
	["_atmKey",getNumber(getMissionConfig "CfgClient" >> "atmKey")],
	["_giveMKey",getNumber(getMissionConfig "CfgClient" >> "giveMoneyKey")],
	["_giveKKey",getNumber(getMissionConfig "CfgClient" >> "giveKeyKey")],
	["_hudKey",getNumber(getMissionConfig "CfgClient" >> "hudKey")]
];

switch(_dikCode) do 
{
    // HUD toggle
	case _hudKey:
	{
	    if(ZP_HUD_ENABLED) then
		{
		    if(ZP_HUD_TOGGLED) then
			{
			    [5] call ZP_fnc_HUD;
				ZP_HUD_TOGGLED = false;
			} else {
			    [0] call ZP_fnc_HUD;
				ZP_HUD_TOGGLED = true;
			};
		};
	    _handled = true;
	};
	
    // Lock/Unlock vehicle
	case _ulKey:
	{
	    if(alive player) then
		{
		    private "_vehicle";
			
		    if(!isNull objectParent player) then
		    {
		        _vehicle = vehicle player;
		    } else {
		        _vehicle = cursorObject;
		    };
		
		    if((alive _vehicle) AND ((_vehicle isKindOf "LandVehicle") OR (_vehicle isKindOf "Ship") OR (_vehicle isKindOf "Air") OR (_vehicle isKindOf "Submarine")) AND ((player distance _vehicle) <= 5.5)) then
		    {
			    if((((_vehicle getVariable "ZP_Owner") select 0) isEqualTo (getPlayerUID player)) OR ((getPlayerUID player) in ((_vehicle getVariable "ZP_Owner") select 3))) then
				{
				    [_vehicle] call ZP_fnc_lockOrUnlock;
				    _handled = true;
				};
		    };
		};
	};
	
	// Admin key
	case _admKey:
	{
	    if(((getPlayerUID player) in ADMINS) AND !dialog AND (alive player)) then
        {
			[] call ZP_fnc_dialogOnLoadAdminMenu;
			_handled = true;
		};
	};
	
	// ATM key
	case _atmKey:
	{
	    if(ZP_ATM_ENABLED) then
		{
		    if(!dialog AND (alive player) AND ([] call ZP_fnc_nearbyATM)) then
			{
			    [] call ZP_fnc_dialogOnLoadATM;
				_handled = true;
			};
		};
	};
	
	// Give money key
	case _giveMKey:
	{
	    if(!ZP_GIVE_MONEY_ENABLED) exitWith {};
		if((alive player) AND (cursorObject isKindOf "Man") AND (isPlayer cursorObject) AND (alive cursorObject) AND ((player distance cursorObject) < 2) AND !dialog) then
		{
		    [cursorObject] call ZP_fnc_dialogOnLoadGiveMoney;
			_handled = true;
		};
	};
	
	// Give vehicle key
	case _giveKKey:
	{
	    if(!dialog AND (alive player)) then
		{
	        private "_vehicle";
			
		    if(!isNull objectParent player) then
		    {
		        _vehicle = vehicle player;
		    } else {
		        _vehicle = cursorObject;
		    };
		
		    if((alive _vehicle) AND ((_vehicle isKindOf "LandVehicle") OR (_vehicle isKindOf "Ship") OR (_vehicle isKindOf "Air") OR (_vehicle isKindOf "Submarine")) AND (((_vehicle getVariable "ZP_Owner") select 0) isEqualTo (getPlayerUID player)) AND ((player distance _vehicle) <= 5.5)) then
		    {
		        [_vehicle] call ZP_fnc_dialogOnLoadGiveKey;
				_handled = true;
		    };
		};
	};
};

_handled;
