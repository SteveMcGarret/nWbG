/*
	Will be revised later
*/
_mode = _this select 3;

switch (_mode) do 
{
	case "first":
	{
		if((damage player) < 0.25) exitWith {};
		if(!("FirstAidKit" in (items player))) exitWith {};
		player removeItem "FirstAidKit";
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 3;
		player setDamage 0.25; //Heal to 75
	};	
	case "second":
	{
		if((damage player) < 0.01) exitWith {};
		if(!("Medikit" in (items player))) exitWith {};
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 3;
		player setDamage 0; //Heal to 100
	};
};