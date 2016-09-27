centerX := (bottomRight.x - topLeft.x) / 2

selectMission() {
  global centerX

  while (!isMissionSelection()) {
    sleepSeconds(5)
  }

  clickPoint(centerX, 530)
}

selectFirstFriend() {
  global centerX

  while (!isFriendSelection()) {
    sleepSeconds(5)
  }

  clickPoint(centerX, 250)
}

clickDepart() {
  global centerX

  while (!isDepartScreen()) {
    sleepSeconds(5)
  }

  clickPoint(centerX, 690)
}

autoBattle() {
  while (!isBattleScreen()) {
    sleepSeconds(5)
  }

  clickPoint(60, 730)
}

clickMissionReport() {
  global centerX

  while (!isMissionReport()) {
    sleepSeconds(5)
  }

  clickPoint(centerX, 690)
}

clickCharacterReport() {
  global centerX

  while (!isCharacterReport()) {
    sleepSeconds(5)
  }

  while (isCharacterReport()) {
    clickPoint(centerX, 690)
    sleepSeconds(5)
  }
}

clickRewardsMissionReport() {
  global centerX

  while (!isRewardsReport()) {
    sleepSeconds(5)
  }

  clickPoint(centerX, 690)
}

finishMission() {
  clickMissionReport()
  clickCharacterReport()
  clickRewardsMissionReport()
}

isMissionSelection() {
  global centerX
  PixelGetColor, color1, getScreenX(centerX), getScreenY(233)
  PixelGetColor, color2, getScreenX(centerX), getScreenY(328)

  return color1 = 0x018AA8 && color2 = 0x018EAD
}

isFriendSelection() {
  PixelGetColor, color1, getScreenX(241), getScreenY(234)
  PixelGetColor, color2, getScreenX(239), getScreenY(362)

  return color1 = 0x704A00 && color2 = 0x704A00
}

isDepartScreen() {
  PixelGetColor, color1, getScreenX(90), getScreenY(454)
  PixelGetColor, color2, getScreenX(90), getScreenY(476)

  return color1 = 0xDEDEDE && color2 = 0xE1E1E1
}

isBattleScreen() {
  PixelGetColor, color1, getScreenX(2), getScreenY(384)
  PixelGetColor, color2, getScreenX(12), getScreenY(392)

  return color1 = 0x77B9D6 && color2 = 0x489DD0
}

isMissionReport() {
  PixelGetColor, color1, getScreenX(244), getScreenY(289)
  PixelGetColor, color2, getScreenX(244), getScreenY(618)
  PixelGetColor, color3, getScreenX(237), getScreenY(663)

  return color1 = 0xECECEC && color2 = 0x8F8F8F && color3 = 0xECECEC
}

isCharacterReport() {
  PixelGetColor, color, getScreenX(158), getScreenY(112)

  return color = 0xDAC1B3
}

isRewardsReport() {
  PixelGetColor, color1, getScreenX(244), getScreenY(185)
  PixelGetColor, color2, getScreenX(244), getScreenY(659)
  PixelGetColor, color3, getScreenX(234), getScreenY(677)

  return color1 = 0xC1C1C1 && color2 = 0xB5B5B5 && color3 = 0x717171
}
