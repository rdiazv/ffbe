; Despliega un tooltip con la posición actual del puntero con respecto
; al viewport y a la pantalla del emulador

settimer showToolTip, 0

showToolTip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y

noxPoint := getNoxPoint(x, y)
rx := noxPoint.x
ry := noxPoint.y

tooltip (%x% %y%) (%rx% %ry%), 0, 0
return
