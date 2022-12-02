/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_class",["_type","",[""]]];

{
    if(_class isKindOf _x) then
	{
	    _type = _x;
	} else {};
} forEach ["Car","Truck","Tank","Air","Ship","Submarine"];
	
_type;
	