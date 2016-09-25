------
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely

SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen

;==============================;
; Despliega un tooltip con la posición actual del puntero con respecto
; a la pantalla
;==============================;
settimer showToolTip, 0

showToolTip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y
tooltip (%x% %y%), 0, 0
return
;==============================;
