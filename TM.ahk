#Include lib/Includes.ahk

F8::
{
  while (true) {
    resetElapsedTime()
    farmTM()

    rechargeTime = NRG_TIME - getElapsedSeconds()

    if (rechargeTime > 0) {
      sleepSeconds(rechargeTime)
    }
  }
}

F12::Reload

Esc::ExitApp

farmTM()
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
