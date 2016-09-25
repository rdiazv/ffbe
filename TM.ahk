------
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely

SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen

; Coordenadas de la pantalla del simulador. (x, y)
topLeft := new Point(440, 35)
bottomRight := new Point(915, 88)
centerX := (bottomRight.x - topLeft.x) / 2

F8::
{
  selectMission()
  sleepSeconds(5)
  selectFirstFriend()
  sleepSeconds(5)
  clickDepart()
  sleepSeconds(15)
  autoBattle()
  sleepSeconds(90)
  finishMission()
}

F12::Reload

;==============================;
; Funciones
;==============================;

selectMission() {
  global centerX
  clickPoint(centerX, 530)
}

selectFirstFriend() {
  global centerX
  clickPoint(centerX, 250)
}

clickDepart() {
  global centerX
  clickPoint(centerX, 690)
}

autoBattle() {
  clickPoint(60, 730)
}

clickNext() {
  global centerX
  clickPoint(centerX, 690)
}

finishMission() {
  clickNext()
  sleepSeconds(10)
  clickNext()
  sleepSeconds(10)
  clickNext()
}

;==============================;
; Tooltip
;==============================;
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

;==============================;
; Helpers
;==============================;

class Point {
  __New(x, y) {
    this.x := x
    this.y := y
  }
}

clickPoint(x, y) {
  point := getScreenPoint(x, y)

  MouseClick, left, point.x, point.y, 1, 0
}

getScreenPoint(x, y) {
  global topLeft

  return new Point(x + topLeft.x, y + topLeft.y)
}

getNoxPoint(x, y) {
  global topLeft

  return new Point(x - topLeft.x, y - topLeft.y)
}

sleepSeconds(seconds) {
    sleep, seconds * 1000
}
