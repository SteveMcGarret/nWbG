_onScreenTime = 8;

sleep 2; //Wait in seconds before the credits start after player is in-game

_role1 = "Warte auf die Medics";
_role1names = ["Wenn dir was an deinem Leben liegt warte auf die Medics!"];
_role2 = "Lass dir Helfen";
_role2names = ["Die Medics sehen, dass du tot bist und eilen bereits zu dir um dir zu helfen"];


{
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='0.55' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.9);
	[
	_finalText,
	[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
	[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
	_onScreenTime,
	0.5
	] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach [
	//The list below should have exactly the same amount of roles as the list above
	[_role1, _role1names],
	[_role2, _role2names]
];