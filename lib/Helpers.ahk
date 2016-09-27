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

getScreenX(x) {
  global topLeft
  return x + topLeft.x
}

getScreenY(y) {
  global topLeft
  return y + topLeft.y
}

getScreenPoint(x, y) {
  return new Point(getScreenX(x), getScreenY(y))
}

getNoxX(x) {
  global topLeft
  return x - topLeft.x
}

getNoxY(y) {
  global topLeft
  return y - topLeft.y
}

getNoxPoint(x, y) {
  return new Point(getNoxX(x), getNoxY(y))
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

setStatusText(status) {
  CoordMode, ToolTip, Screen
  tooltip %status%, 0, 0, 1
}

setStatusText("Stopped")
