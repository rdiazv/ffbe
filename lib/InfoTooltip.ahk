; Despliega un tooltip con la posición actual del puntero con respecto
; al viewport y a la pantalla del emulador

settimer showInfoTooltip, 0

showInfoTooltip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y

noxPoint := getNoxPoint(x, y)
rx := noxPoint.x
ry := noxPoint.y

PixelGetColor, color, %x%, %y%

if (START_TIME = 0) {
  tooltip (%x% %y%) (%rx% %ry%) %color%, 0, 0
}
else {
  seconds := getElapsedSeconds()
  tooltip (%x% %y%) (%rx% %ry%) %color% %seconds%, 0, 0
}

return
