/*
File: fn_vehicleColorStr.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "Notarzt"};
			case 9: {_color = "Breaking Bad"};
			case 10: {_color = "Monster Energy"};
			case 11: {_color = "Captain"};
			case 12: {_color = "Pokemon"};
			case 13: {_color = "Comic"};
			case 14: {_color = "Weed"};
			case 15: {_color = "Yin and Yang"};
			case 16: {_color = "Purple"};
			case 17: {_color = "Pink"};
			case 18: {_color = "Pig Pink"};
			case 19: {_color = "Sky"};
			case 20: {_color = "Red2"};
			case 21: {_color = "Yellow2"};
			case 22: {_color = "Lime"};
			case 23: {_color = "TAN"};
			case 24: {_color = "ADAC"};
		};
	};
	
	case "I_G_Offroad_01_armed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "O_Truck_03_ammo_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};

	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Polizei"};
			case 9: {_color = "Breaking Bad"};
			case 10: {_color = "Hello Kitty"};
			case 11: {_color = "My Little Pony"};
			case 12: {_color = "Ghostbusters"};
			case 13: {_color = "Monster Energy"};
			case 14: {_color = "Metallica"};
			case 15: {_color = "Black Hello Kitty"};
			case 16: {_color = "Redbull"};
			case 17: {_color = "Schwarz"};
			case 18: {_color = "Medic"};
		};
	};

	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Breaking Bad"};
			case 8: {_color = "Hello Kitty"};
			case 9: {_color = "My Little Pony"};
			case 10: {_color = "Ghostbusters"};
			case 11: {_color = "Monster Energy"};
			case 12: {_color = "Metallica"};
			case 13: {_color = "Black Hello Kitty"};
			case 14: {_color = "Redbull"};
			case 15: {_color = "Schwarz"};
			case 16: {_color = "Medic"};
		};
	};

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Polizei";};
			case 5: {_color = "Medic";};
			case 6: {_color = "Green Tribal";};
			case 7: {_color = "Batman";};
			case 8: {_color = "Ferrari";};
			case 9: {_color = "Taxi";};
			case 10: {_color = "Camo";};
			case 11: {_color = "Hello Kitty";};
			case 12: {_color = "Weiss Uni";};
			case 13: {_color = "Wookie";};
			case 14: {_color = "Wolfenstein";};
			case 15: {_color = "Sticker";};
			case 16: {_color = "Rio";};
			case 17: {_color = "Minecraft";};
			case 18: {_color = "Battlefield";};
			case 19: {_color = "Blue Skull";};
			case 20: {_color = "Schwarz";};
			case 21: {_color = "Carbon (hell)";};
			case 22: {_color = "Carbon (dunkel)";};
			case 23: {_color = "ADAC";};
		};
	};

	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "RTW"};

		};
	};
	
	case "C_Boat_Civil_01_police_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Schwarz"};
		};
	};

	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};

	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};

	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};

	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Medic"};
			case 15: {_color = "Green Dragon"};
			case 16: {_color = "Red WASP"};
			case 17: {_color = "ADAC"};
		};
	};

	case "B_Heli_Attack_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "B_Heli_Light_01_armed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
case "O_Heli_Light_02_unarmed_F":
{
  switch (_index) do
  {
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Medic"};
			case 5: {_color = "Polizei"};
			case 6: {_color = "Orange Willi"};
			case 7: {_color = "Schwarz"};
};
};

case "B_MRAP_01_F":
{
  switch (_index) do
  {
  case 0: {_color = "Polizei"};
  case 1: {_color = "SEK"};
  case 2: {_color = "Medic"};
};
};

	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Green Camo"};
			case 1: {_color = "Yellow Camo"};
			case 2: {_color = "Red Camo"};
			case 3: {_color = "Black Rebel"};
			case 4: {_color = "Batman"};
			case 5: {_color = "Schwarz"};
			case 6: {_color = "Camo"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "SEK"};
		};
	};
	
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Green Camo"};
			case 1: {_color = "Yellow Camo"};
			case 2: {_color = "Red Camo"};
			case 3: {_color = "Black Rebel"};
			case 4: {_color = "Batman"};
			case 5: {_color = "Schwarz"};
			case 6: {_color = "Camo"};

		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
			case 2: {_color = "Schwarz"};
		};
	};

	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
			case 2: {_color = "Schwarz"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Grey Camo"};
			case 3: {_color = "Polizei"};
  
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Bundespolizei"};

		};
	};

	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebel"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Medic"};
			case 4: {_color = "ADAC"};

		};
	};


	case "B_Heli_Transport_01_camo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Medic"};
			case 1: {_color = "Polizei"};
		};
	};


case "B_Truck_01_mover_F":
{
  switch (_index) do
  {
  case 0: {_color = "ADAC"};
};
};

case "O_APC_Wheeled_02_rcws_F":
{
  switch (_index) do
  {
  case 0: {_color = "Polizei"};
};
};

	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};
	
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};

case "B_Truck_01_covered_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};


  };
};
case "B_Truck_01_box_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};


  };
};
case "B_Truck_01_transport_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};
	case 1: {_color = "ADAC"};

  };
};
case "O_Truck_03_covered_F":
{
  switch (_index) do
  {
    case 0: {_color = "Schwarz"};

  };
};
case "O_G_Van_01_fuel_F":
{
  switch (_index) do
  {
   case 0: {_color = "ADAC"};

  };
};












};

_color;