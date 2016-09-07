/*
Repentz for Psychos Insane Asylum
*/

[] spawn {
	while {true} do {
	{
		if ((agent _x isKindOf "Snake_random_F")) then { deleteVehicle agent _x; };
		}forEach agents;
		sleep 6;
	};
};