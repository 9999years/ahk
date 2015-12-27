SendMode, Input ; Recommended for new scripts due to its superior speed and reliability. SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance force

;printscreen run gyazo
PrintScreen::
	Run, C:\Program Files (x86)\Gyazo\Gyazowin.exe
Return

;win+j open downloads
#j::Run %USERPROFILE%\Downloads

#LShift::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

Pause::Send {Media_Play_Pause}
Ralt & Pause::Send {Media_Next}
RShift & Pause::Send {Media_Prev}

Ralt & Enter::Send {NumpadEnter}
RAlt & m::Send {U+2014} ;em dash
RAlt & n::Send {U+2013} ;en dash
RAlt & `;::Send {U+201C} ;open double quotes
RAlt & '::Send {U+201D} ;close double quotes
RAlt & [::Send {U+2018} ;open single quote
RAlt & ]::Send {U+2019} ;close single quote

F15 & r::Send {U+00AE} ; Registered trademark
F15 & t::Send {U+2122} ; TM
