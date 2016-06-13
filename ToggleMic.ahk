; ToggleMic.ahk
;
; Author: Peter Provost
; Git Repo: http://github.com/PProvost/AutoHotKey
; 
; Description: Toggles the microphone on and off when mouse 
; button 4 is pressed

#NoEnv
#SingleInstance force

; Note: the mixer value (4) may need to change for your
; system. Use the SoundCardAnalysis script from the AHK docs
; for the SoundSet function to find your mixer value.

^!Numpad9::
	SoundSet, +1, MASTER, Mute, 3
	SoundGet, mute, MASTER, MUTE, 3

	If mute = On
		soundfile = %A_WinDir%\Media\notify.wav
	Else
		soundfile = %A_WinDir%\Media\notify.wav

	SoundPlay, %soundfile%
	; TrayTip, ToggleMic, %soundfile%, 3
	TrayTip, ToggleMic, Microphone mute is %mute%, 3
return
