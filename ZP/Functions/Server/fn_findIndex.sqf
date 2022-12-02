/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/
params["_value","_array","_return"];

_return = -1;

{
	if(_value in _x) exitWith 
	{
		_return = _forEachIndex;
	};
} forEach _array;

_return;
