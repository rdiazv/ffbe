centerX := (bottomRight.x - topLeft.x) / 2

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

isMissionSelection() {
  global centerX
  PixelGetColor, topFrame, getScreenX(centerX), getScreenY(233)
  PixelGetColor, bottomFrame, getScreenX(centerX), getScreenY(328)

  return topFrame = 0x018AA8 && bottomFrame = 0x018EAD
}
