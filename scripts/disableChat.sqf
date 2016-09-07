/*
	Author: Wawixs
	AltisDev.com
	
	Description:
	Disable any chat..
*/
sleep 1;
waitUntil {sleep 0.01; (!(isNull (findDisplay 46)))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 in actionKeys 'Chat') then { true } else { false };"];