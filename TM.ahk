------
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely

SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen

; Coordenadas de la pantalla del simulador. (x, y)
topLeft := new Point(0, 0)
bottomRight := new Point(0, 0)

;==============================;
; Despliega un tooltip con la posición actual del puntero con respecto
; al viewport y a la pantalla del emulador
settimer showToolTip, 0

showToolTip:
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
MouseGetPos x, y

noxPoint := getNoxPoint(new Point(x, y))
rx := noxPoint.x
ry := noxPoint.y

tooltip (%x% %y%) (%rx% %ry%), 0, 0
return
;==============================;

class Point {
  __New(x, y) {
    this.x := x
    this.y := y
  }
}

getNoxPoint(point) {
  global topLeft

  return new Point(point.x - topLeft.x, point.y - topLeft.y)
}
