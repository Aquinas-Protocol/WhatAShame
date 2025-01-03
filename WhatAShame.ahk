#Requires AutoHotkey v2.0

global ThirdP := false
global NoClip := false

;Sends a passed command to in game cheat menu ~
RunCMD(cmd)
{
    Send "``"
	Send cmd
	Send "{Enter}"
	Send "``"
}

Tab & m::RunCMD("summon multitool")   ;execute summon multitool command

Tab & l::RunCMD("summon lockpick")   ;execute summon lockpick command

Tab & e::RunCMD("allenergy")   ;execute full bioenergey command

Tab & h::RunCMD("allhealth")   ;execute full health command

Tab & a::RunCMD("allammo")   ;execute full ammo for each weapon command

Tab & o::RunCMD("opensesame")   ;unlocks targeted door or panel

Tab & u::RunCMD("summon augmentationupgradecannister")  ;spawns aug upgrade

Tab & g::RunCMD("god")   ;toggles God mode

Tab & s::  ;open summon command (type items manually)
{
	Send "``"
	Send "summon "
}


LShift & s::  ;open spawnmass command (type items manually)
{
	Send "``"
	Send "spawnmass "
}

;toggles 3rd person, using global 'ThirdP' to track state
Tab & 3::
{
	global

	if ThirdP
	{
		RunCMD("behindview 0")
		ThirdP := false
	}
	else if !ThirdP
	{
		RunCMD("behindview 1")
		ThirdP := true
	}
}

;toggles noclip on/off using global 'NoClip' to track state
Tab & n::
{
	global

	if NoClip
	{
		RunCMD("walk")
		NoClip := false
	}
	else if !NoClip
	{
		RunCMD("ghost")
		NoClip := true
	}
}
