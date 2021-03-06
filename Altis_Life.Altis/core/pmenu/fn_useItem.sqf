/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "kegel"):
	{
		if(!isNull life_kegel) exitWith {hint "Du stellst gerade einen Verkehrskegel auf!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_kegel;
		};
	};
	
	case (_item == "absperrung"):
	{
		if(!isNull life_absperrung) exitWith {hint "Du stellst gerade eine Absperrung auf!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_absperrung;
		};
	};
	
	case (_item == "flutlicht"):
	{
		if(!isNull life_flutlicht) exitWith {hint "Du stellst gerade ein Flutlicht auf!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_flutlicht;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			//[] spawn fnc_drug_use;
			ReportLoc = getPos player;
			//[[0,format["%1 wurde beim Heroin drücken gesehen!.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			[[0,format["%1 drückt sich eine Naden in den Arm und spielt Bahnhof Zoo!",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			life_thirst = 50;
			life_hunger = 20;
			[] spawn life_fnc_useHeroin;
			
		[[0,format["POLIZEI REPORT: Da ist ein Drogensüchtiger, der braucht dringend Hilfe. Ist es nicht ihr Job Drogenmissbrauch zu unterbinden?! -Anon",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;


		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
		ReportLoc = getPos player;
		//[[0,format["%1 wurde beim Gras Rauchen gesehen!.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		[[0,format["%1 dampt sich einen Joint und singt: i shot the sheriff, but i did no shot the deputy",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			life_thirst = 50;
			life_hunger = 20;
			[] spawn life_fnc_useWeed;
			
		[[0,format["POLIZEI REPORT: Die Kiffen da und chillen rum, das geht doch nicht! Es ist IHR JOB DAS ZU VERHINDERN!! -Anon",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;








		};
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};
	
	case "fishing":
	{
		[] spawn fnc_fishing;
	};
	
	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickaxeUse;
	};

    case (_item == "underwatercharge"): {
        player reveal gold_safe;
        (group player) reveal gold_safe;
        [cursorTarget] spawn life_fnc_underwaterCharge;
    };




	case (_item in ["storage1","storage2"]):
    {
		[_item] call life_fnc_placeStorage;
    };	

  case (_item =="bottledwhiskey"):
    {
        if(playerSide in [west,independent]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
        if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
        if(([false,_item,1] call life_fnc_handleInv)) then
        {
            if(isNil "life_drink") then {life_drink = 0;};
            life_drink = life_drink + 0.06;
            if (life_drink < 0.07) exitWith {};
            [] spawn life_fnc_drinkwhiskey;
        };
    };

    case (_item =="bottledshine"):
    {
        if(playerSide in [west,independent]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
        if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
        if(([false,_item,1] call life_fnc_handleInv)) then
        {
            if(isNil "life_drink") then {life_drink = 0;};
            life_drink = life_drink + 0.08;
            if (life_drink < 0.09) exitWith {};
            [] spawn life_fnc_drinkmoonshine;
        };
    };

    case (_item =="bottledbeer"):
    {

        if(playerSide in [west,independent]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
        if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
        if(([false,_item,1] call life_fnc_handleInv)) then
        {
            if(isNil "life_drink") then {life_drink = 0;};
            life_drink = life_drink + 0.02;
            if (life_drink < 0.06) exitWith {};
            [] spawn life_fnc_drinkbeer;
        };
    };

case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	case (_item == "underwatercharge"): {
		player reveal gold_safe;
		(group player) reveal gold_safe;
		[cursorTarget] spawn life_fnc_underwaterCharge;
	};


	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;