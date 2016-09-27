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
  selectFirstFriend()
  clickDepart()
  autoBattle()
  finishMission()
}
