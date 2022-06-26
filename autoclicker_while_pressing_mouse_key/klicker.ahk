#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

toggle = 0
#MaxThreadsPerHotkey 2

*LButton::SetTimer, MyCoolFunction, 0 ;when LButton is clicked down start a timer with the shortest possible period
*LButton Up::SetTimer, MyCoolFunction, Off ;when LButton is released, stop the timer

MyCoolFunction()
{
    Click

}

F8::
    Suspend
    SetTimer, MyCoolFunction, Off ;set the timer off just incase we hadn't released LButton before we hit F8
return

