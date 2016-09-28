#Include lib/Includes.ahk

F8::
{
  while (true) {
    setStatusText("Starting")
    resetElapsedTime()
    farmTM()

    rechargeTime := NRG_TIME - getElapsedSeconds()

    if (rechargeTime > 0) {
      setStatusText("Waiting energy recovery...")
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
