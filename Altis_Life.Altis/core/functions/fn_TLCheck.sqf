/*
	File: fnc_ZOCheck.sqf
	@Version: 1.0
	@Author: Gabbeh
*/
private ['_mode', '_value'];
_mode = _this select 0;
_value = _this select 1;
switch(_mode) do
{
	case (0): {
		life_dahfklgakl = _value - life_check1var; // [0, ] call life_fnc_TLCheck

	};
	case (1) : {
		life_adflalgga = _value - life_check2var;
	};
	case (2) : {
		_value = life_dahfklgakl + life_check1var; // ([2, 0] call life_fnc_TLCheck)
	};
	case (3): {
		_value = life_adflalgga + life_check2var;
	};
	case (4): {
		_value = life_dahfklgakl;
	};
	case (5): {
		_value = life_adflalgga;
	};
};

_value;
