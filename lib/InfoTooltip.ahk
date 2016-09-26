; Despliega un tooltip con la posición actual del puntero con respecto
; al viewport y a la pantalla del emulador

settimer showInfoTooltip, 0

showInfoTooltip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y

seconds := getElapsedSeconds()
noxPoint := getNoxPoint(x, y)
rx := noxPoint.x
ry := noxPoint.y

tooltip (%x% %y%) (%rx% %ry%) %seconds%, 0, 0
return
