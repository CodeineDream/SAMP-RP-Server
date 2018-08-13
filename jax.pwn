// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>

#define TEAM_CIV 1
#define TEAM_MEDIC 2

new PlayerDead = 0;
new gTeam[MAX_PLAYERS];


#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" County RP");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Jax's County RP");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
	SetGameModeText("Jax's County RP");
	AddStaticVehicle(579,1381.4486,456.8737,19.8448,66.8997,86,0); // car spawn mont
	AddStaticVehicle(416,1228.8513,300.8872,19.5583,65.4873,1,3);
    DisableInteriorEnterExits();
    
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
    SetPlayerSkin(playerid, 101);
    gTeam[playerid] = TEAM_CIV;
	SendClientMessage(playerid, 0x00FF00FF, "Hello");
	if (PlayerDead == 1)
	{
		SetPlayerPos(playerid, 1241.3473,327.6176,19.7555);
		PlayerDead = 0;
	}
	else
	{
	    SetPlayerPos(playerid, 1382.7467,464.5195,20.2091);
	}
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	PlayerDead = 1;
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/kill", cmdtext, true, 5) == 0)
	{
	    SetPlayerHealth(0,0);
		return 1;
	}
	
	if (strcmp("/setskin",cmdtext, true, 8) == 0)
	{
	    SetPlayerSkin(playerid, 101);
	    return 1;
	}
	if (strcmp("/medic", cmdtext, true, 6) == 0)
	{
	    gTeam[playerid] = TEAM_MEDIC;
	    SetPlayerSkin(playerid, 276);
	    SendClientMessage(playerid, -1, "You are now a Medic!");
	    return 1;
	}
	if (strcmp("/civ", cmdtext, true, 4) == 0)
	{
	    if (gTeam[playerid] == TEAM_CIV)
	    {
	        SendClientMessage(playerid, 0xFF0000FF, "You are already a Civilian!");
	        return 1;
     	}
     	else
     	{
     	    gTeam[playerid] = TEAM_CIV;
     	    SetPlayerSkin(playerid, 101);
     	    SendClientMessage(playerid, -1, "You are now Unemployed!");
     	    return 1;
		}
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if (vehicleid == 2)
	{
	    if (ispassenger == 0)
	    {
	        if (gTeam[playerid] == TEAM_MEDIC)
	        {
	            return 1;
			}
			else
			{
				SendClientMessage(playerid,0xFF0000FF,"You are not a Medic!");
				RemovePlayerFromVehicle(playerid);
				TogglePlayerControllable(playerid,1);
				return 1;
			}
		}
	}
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
