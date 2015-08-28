/*
	Launches mission functions
	Made for Defent for Defents Mission System
	And for Numenadayz.com
	Written by eraser1


	[_delay, _function, _params, _persistance] call ExileServer_system_thread_addTask;
*/

//Load config
#include "config.sqf";

RESISTANCE setFriend[WEST,0];
WEST setFriend[RESISTANCE,0];
RESISTANCE setFriend[EAST,0];
EAST setFriend[RESISTANCE,0];
EAST setFriend[WEST,0];
WEST setFriend[EAST,0];

if(DMS_StaticMission) then {
	call compileFinal preprocessFileLineNumbers "\x\addons\dms\static\static_init.sqf";//<---- TODO
};

if (DMS_DynamicMission) then {
	call compileFinal preprocessFileLineNumbers "\x\addons\dms\missions\mission_init.sqf";//<---- TODO
	[1, DMS_MissionStatusCheck, [], true] call ExileServer_system_thread_addTask;
};
