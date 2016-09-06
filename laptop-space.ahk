SendMode, Input ; Recommended for new scripts due to its superior speed and reliability. SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance force

;capslock is mapped to numpad delete for pok3r bindings

NumpadDel::return ;suppress on default
NumpadDel & u::Send {PgUp}
NumpadDel & o::Send {PgDn}
NumpadDel & h::Send {Left}
NumpadDel & j::Send {Down}
NumpadDel & k::Send {Up}
NumpadDel & l::Send {Right}
NumpadDel & `;::Send {Ins}
NumpadDel & '::Send {Del}
NumpadDel & }::Send {Pause}
NumpadDel & p::Send {PrintScreen}
NumpadDel & z::Send {AppsKey}
NumpadDel & n::Send {End}
NumpadDel & i::Send {Home}
NumpadDel & f::Send {Volume_Mute}
NumpadDel & s::Send {Volume_Down}
NumpadDel & d::Send {Volume_Up}
NumpadDel & Backspace::Send {Delete}
NumpadDel & 1::Send {F1}
NumpadDel & 2::Send {F2}
NumpadDel & 3::Send {F3}
NumpadDel & 4::Send {F4}
NumpadDel & 5::Send {F5}
NumpadDel & 6::Send {F6}
NumpadDel & 7::Send {F7}
NumpadDel & 8::Send {F8}
NumpadDel & 9::Send {F9}
NumpadDel & 0::Send {F10}
NumpadDel & -::Send {F11}
NumpadDel & =::Send {F12}
