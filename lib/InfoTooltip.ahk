; Despliega un tooltip con la posición actual del puntero con respecto
; al viewport y a la pantalla del emulador

settimer showTimeTooltip, 1000
settimer showPositionTooltip, 0
settimer showColorTooltip, 0

showTimeTooltip:
CoordMode, ToolTip, Screen

if (START_TIME = 0) {
  tooltip Elapsed time: 0, 0, 20, 2
}
else {
  seconds := Floor(getElapsedSeconds())
  tooltip Elapsed time: %seconds%, 0, 20, 2
}

return

showPositionTooltip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y

noxPoint := getNoxPoint(x, y)
rx := noxPoint.x
ry := noxPoint.y

tooltip Screen: (%x% %y%) | Nox: (%rx% %ry%), 0, 40, 3
return

showColorTooltip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y

PixelGetColor, color, %x%, %y%

tooltip Color: %color%, 0, 60, 4
return
