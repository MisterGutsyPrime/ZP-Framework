/*
    Author - R00x
    Description - Called to return the config where the passed item belongs to
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_item"];
	
switch true do
{
    case(isClass(configFile >> "CfgMagazines" >> _item)): {"CfgMagazines"};
	case(isClass(configFile >> "CfgWeapons" >> _item)): {"CfgWeapons"};
	case(isClass(configFile >> "CfgVehicles" >> _item)): {"CfgVehicles"};
	case(isClass(configFile >> "CfgGlasses" >> _item)): {"CfgGlasses"};
	default {""};
};
