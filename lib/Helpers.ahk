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

getElapsedSeconds() {
  global START_TIME
  return (A_TickCount - START_TIME) / 1000
}

resetElapsedTime() {
  global START_TIME
  START_TIME := A_TickCount
}
