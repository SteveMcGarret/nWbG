/*
	File: fn_checkMoney.sqf
	@Version: 1.0
	@Author: Gabbeh
*/

[] spawn {
	while{true} do {
		_curCash = ([3, 0] call life_fnc_TLCheck) + ([2, 0] call life_fnc_TLCheck);
		sleep 3;
		_newCash = ([3, 0] call life_fnc_TLCheck) + ([2, 0] call life_fnc_TLCheck);
		_cashDif = _newCash - _curCash;
		_alertNumber = 499999;
		if(_cashDif > _alertNumber) then {
			_toLog = format ["SUSPICOUS: %1 jumped from %2 to %3. Difference %4", name player, [_curCash] call life_fnc_numberText, [_newCash] call life_fnc_numberText, [_cashDif] call life_fnc_numberText];
			[_toLog,"zo_log"] call BIS_fnc_MP;
		};
	};
};

[] spawn {
	while{true} do {
		_toLog = format ["MONEY LOG: %1 owns %2 in total. Cash: %3, Bank: %4", name player, [(([3, 0] call life_fnc_TLCheck) + ([2, 0] call life_fnc_TLCheck))] call life_fnc_numberText, [([3, 0] call life_fnc_TLCheck)] call life_fnc_numberText, [([2, 0] call life_fnc_TLCheck)] call life_fnc_numberText];
		[_toLog,"zo_log"] call BIS_fnc_MP;
		sleep (600);
	};
};
