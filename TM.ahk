#Include lib/Includes.ahk

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

Esc::ExitApp
