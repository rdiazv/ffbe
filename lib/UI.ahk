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
