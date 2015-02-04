/*

	Sell [SHORTNAME, AMOUNT, israw, send?]

*/

private["_shortname","_amount","_price","_modifier","_globalprice","_min","_dir","_israw","_arr_resource","_arr_price","_modifier","_send","_relamount","_max"];

_shortname = _this select 0;
_amount = _this select 1;
_israw = [_this, 2, false] call BIS_fnc_param;
_send = [_this, 3, true] call BIS_fnc_param;

//Get all necessary arrays
_arr_resource = [_shortname] call life_fnc_marketGetRow;
_arr_price = [_shortname] call life_fnc_marketGetPriceRow;

//Calculate the new price of the product
_price = _arr_price select 1; //current price
_globalprice = _arr_price select 2; //current change rate

//diag_log format["DEBUG MARKET - AMOUNT: %1", _amount];
//diag_log format["DEBUG MARKET - ARR_RESOURCE: %1", (_arr_resource select 4)];
//diag_log format["DEBUG MARKET - ARRAY SELECT 5: %1", (_arr_resource select 4)];


_selected_modifier = _arr_resource select 4;

if(_selected_modifier < 0) then {_selected_modifier = 1;};

_modifier = (_amount * _selected_modifier); //calculate modifier

_price = _price - _modifier;
_globalprice = _globalprice - _modifier;

//Check borders
if(_price < 0) then {_price = 0;};

_min = _arr_resource select 2;
_max = _arr_resource select 3;

if( _price > _max)then {_price = _max;};
if( _price < _min)then {_price = _min;};

//insert into new array
[_shortname, [_shortname,_price,_globalprice,-(_modifier)], false ] call life_fnc_marketSetPriceRow; //dont broadcast!


/////Change related prices
if(!_israw) then
{
	{
		if((count _x) == 2) then
		{
		    _relamount = ceil (_amount * (_x select 1));
		
		    if(_relamount > 0) then
		    {
			[_x select 0, _relamount, true, false] call life_fnc_marketBuy; //Make prices higher, no broadcast!
		    }
		    else
		    {
			_relamount = -(_relamount);
			[_x select 0, _relamount, true, false] call life_fnc_marketSell; //Make prices higher, no broadcast!
		    };
		}
		else
		{
		    
		};
		
	}
	foreach (_arr_resource select 6); //in change array
};

//Broadcast now if can send
 if(_send) then {publicVariable "life_market_prices";};
