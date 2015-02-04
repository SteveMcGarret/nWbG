#include <macro.h>
/*

  file: fn_smartphone.sqf
  Author: Silex
  
*/
private["_display","_units","_type","_data","_rowData","_msg"];
_type = [_this,0,0] call BIS_fnc_param;
_data = [_this,1,0,["",[],0]] call BIS_fnc_param;

if((player getVariable "restrained")) exitWith {
	hint "Du bist gefesselt und kannst keine Nachrichten schreiben.";
	closeDialog 0;
};

disableSerialization;
waitUntil {!isNull findDisplay 88888};
_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageList = _display displayCtrl 88882;
_cMessageHeader = _display displayCtrl 88886;
_cMessageHeader ctrlSetText format["Von:                 Nachricht:"];
ctrlEnable[887892,false];

    //diag_log "MESSAGE WURDE GESENDET!";
switch(_type) do
{
  case 0:
  {
    lbClear _cPlayerList;
    {
      if(alive _x && _x != player) then
      {
        switch(side _x) do
        {
          case west: {_type = "Cop"};
          case civilian: {_type = "Civ"};
          case independent: {_type = "Med"};
          case independent: {_type = "Adac"};          
        };
        _cPlayerList lbAdd format["%1 (%2)",_x getVariable["realname", name _x],_type];
        _cPlayerList lbSetData [(lbSize _cPlayerList)-1,str(_x)];
      };
    } forEach playableUnits;
    
    [[getPlayerUID player, player],"TON_fnc_msgRequest",false] spawn life_fnc_MP;
    ctrlEnable[887892,false];
  };
  case 1:
  {
    _msg = [_data select 2,40] call KRON_StrLeft;
    _rowData = [_data select 0, _data select 1, _data select 2, _data select 3];
    _cMessageList lnbAddRow[_data select 3,format["%1 ...",_msg]];
    _cMessageList lnbSetData[[((lnbSize _cMessageList) select 0)-1,0],str(_rowData)];
  };
  case 2:
  {
    ctrlEnable[887892,true];
    _target = lbData[88881,(lbCurSel 88881)];
    life_smartphoneTarget = call compile format["%1",_target];
  };
  case 3:
  {
    lbClear _cMessageList;
    [[player],"TON_fnc_cleanupMessages",false] spawn life_fnc_MP;
  };  
  case 4:
  {
    createDialog "Life_smartphone_schreiben";
    ctrlSetText[88886, format["Nachricht an: %1",name life_smartphoneTarget]];
    if((__GETC__(life_adminlevel) < 1)) then
    {
      ctrlShow[888897,false];
    };
  };
  
  	case 5:
	{
		lbClear _cTextList;

		_texts =
		[
			"",
		    "Eine Einheit ist zu ihnen Unterwegs",
		    "Bitte gedulden Sie sich ein wenig",
		    "Mit Terroristen verhandeln wird nicht",
		    "Landeerlaubis erteilt",
		    "Landeerlaubis verweigert",
		    "Haben Sie die fünf W´s vergessen?",
		    "Wo,Wer,Was,Wann,Wie?",
		    "Bitte die Serverregeln lesen",
			"Aufgrund der Fahrleistungen meines Vorgesetzen benötigen wir etwas länger",
			"Bitte an Support wenden",
			"Das ist ein Fall für den ADAC",
			"Das ist ein Fall für die Medics",
			"Chuck Norris ist unterwegs, bitte warten... 1% ... 2% ... 3%"
		];

		// disable custom messages for non-cops
		if(playerSide != west) then
		{
		    ctrlShow[88891,false];
		};

		{
		    _cTextList lbAdd format["%1",_x];
		    _cTextList lbSetData [(lbSize _cTextList)-1,_x];
		} foreach _texts;


	};
};
