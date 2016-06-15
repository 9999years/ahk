﻿;AHK scripts need a BOM to handle UTF-8 properly. Keep that in mind.
;I normally hate to code in UTF-8, but AHK’s {U+xxxx} method only
;supports the BMP, translating {U+1f914} to U+f914
;So that's where we are, as a people, I guess.

SendMode, Input ; Recommended for new scripts due to its superior speed and reliability. SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#SingleInstance force

#Hotstring O
;#Hotstring EndChars `n `t

;Fitzpatrick 1--6 (lightest to darkest)
;1 and 2 are identical
::;fp1;::🏻
::;fp2;::🏻
::;fp3;::🏼
::;fp4;::🏽
::;fp5;::🏾
::;fp6;::🏿

;===MISC===

::smugshrug::¯\_(ツ)_/¯

;U+2764
::;heart;::❤

;U+2611
::;check;::☑

;U+2610
::;emptycheck;::☐
::;checkempty;::☐

;U+2612
::;ballotx;::☒

;U+1f436
::;dog;::🐶

;U+1f95a
::;egg;::🥚

;U+2b50
::;star;::⭐

;U+1f320
::;shootingstar;::🌠

;U+1f507
::;mute;::🔇

;U+1f6ab
::;no;::🚫

;U+1f61c
::;soon;::😜

;U+3030
::;wavy;::〰

;U+2728
::;sparkle;::✨

;===PEOPLE===

;U+1f481
::;petty;::💁

;U+1f937
::;shrug;::🤷

;U+1f64b
::;raisehand;::🙋

;U+1f926
::;facepalm;::🤦

;U+1f64f
::;pray;::🙏

;===FACES===

;U+1f914
::;hmm;::🤔

;U+1f628
::;shock;::😨

;U+1f610
::;neutral;::😐

;U+1f60d
::;hearteyes;::😍

;U+1f60f
::;smug;::😏

;U+1f62f
::;scared;::😯

;U+1f612
::;unimpressed;::😒

;U+1f614
::;sad;::😔

;U+1f633
::;blush;::😳

;U+1f63a--U+1f63e
::;catsmile;::😺
::;catgrin;::😸
::;catlaugh;::😹
::;cathearteyes;::😻
::;catkiss;::😽
::;catfear;::🙀

::;cattear;::😿
::;catcry;::😿

::;catanger;::😾
::;catpout;::😾

;===HANDS===

;U+1f44f
::;clap;::👏

;U+1f448
::;pointleft;::👈

;U+1f449
::;pointright;::👉

;U+261d
::;pointup;::☝

;U+1f446
::;pointup2;::👆

;U+1f447
::;pointdown;::👇

;U+1f595
::;fuckyou;::🖕
::;middlefinger;::🖕

;U+270c
::;peace;::✌

;U+1f44d
::;thumbs;::👍

;U+1f44e
::;thumbsdown;::👎

;U+1f44c
::;ok;::👌

;U+1f91e
::;hope;::🤞
::;wish;::🤞
::;crossedfingers;::🤞
::;fingerscrossed;::🤞

;U+1f44b
::;wave;::👋

;SendUnicodeChar(0x0000)

;printscreen run gyazo
PrintScreen::
	Run, C:\Program Files (x86)\Gyazo\Gyazowin.exe
Return

;win+j open downloads
#j::Run %USERPROFILE%\Downloads

;win+f open powershell
#f::Send ^l powershell {enter}

Send !d
        ControlGetText Path , Edit1
        Send {Enter}

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

RAlt & r::Send {U+00AE} ; Registered trademark
RAlt & t::Send {U+2122} ; TM
RAlt & 0::Send {U+00B0} ; degree sign

Ralt & ?::Send {U+00B7} ; middle dot
Ralt & Space::Send {U+2009} ; thin space
Ralt & ,::Send {U+3008} ; open guillemet
Ralt & .::Send {U+3009} ; close guillemet

Ralt & <::Send {U+2264} ; less than or equal to
Ralt & >::Send {U+2265} ; greater than or equal to
Ralt & -::Send {U+00B1} ; plus/minus sign
Ralt & =::Send {U+2248} ; approximately equal to
Ralt & c::Send {U+00A9} ; Copyright
Ralt & d::Send {U+2020} ; dagger
Ralt & h::Send {U+2767} ; heart bullet / fleuron / hedera 
Ralt & o::Send {U+2116} ; Number sign
Ralt & p::Send {U+00B6} ; Pilcrow / paragraph sign
Ralt & s::Send {U+00A7} ; Section
Ralt & z::Send {U+203B} ; Reference mark
Ralt & e::Send {U+2026} ; ellipsis
Ralt & x::Send {U+00d7} ; multiplication x
Ralt & j::Send {U+200c} ; zwnj
Ralt & b::Send {U+0009} ; tab


;DIACRITICS
Ralt & g::Send {U+0300} ; grave
Ralt & a::Send {U+0301} ; acute
Ralt & u::Send {U+0308} ; diaresis / umalaut
Ralt & f::Send {U+0327} ; cedilla

#if GetKeyState("Shift","P")
	Ralt & d::Send {U+2021} ; double dagger
	Ralt & m::Send {U+2003} ; em space
	Ralt & n::Send {U+2002} ; en space
	Ralt & =::Send {U+2260} ; not equal to
#if ; end shift block

;ARROWS
Ralt & Up::Send {U+2191} ; up arrow
Ralt & Left::Send {U+2190} ; left arrow
Ralt & Down::Send {U+2193} ; down arrow
Ralt & Right::Send {U+2192} ; right arrow

#if GetKeyState("Up","P") and !GetKeyState("Shift","P")
	Ralt & Left::Send {bs}{U+2196} ; nw single arrow
	Ralt & Down::Send {bs}{U+2195} ; vertical 2 way arrow
	Ralt & Right::Send {bs}{U+2197} ; ne single arrow
#if

#if GetKeyState("Left","P") and !GetKeyState("Shift","P")
	Ralt & Up::Send {bs}{U+2196} ; nw single arrow
	Ralt & Down::Send {bs}{U+2199} ; sw single arrow
	Ralt & Right::Send {bs}{U+2194} ; horizontal 2 way arrow
#if

#if GetKeyState("Down","P") and !GetKeyState("Shift","P")
	Ralt & Up::Send {bs}{U+2195} ; vertical 2 way arrow
	Ralt & Left::Send {bs}{U+2199} ; sw single arrow
	Ralt & Right::Send {bs}{U+2198} ; se single arrow
#if

#if GetKeyState("Right","P") and !GetKeyState("Shift","P")
	Ralt & Up::Send {bs}{U+2197} ; ne single arrow
	Ralt & Left::Send {bs}{U+2194} ; horizontal 2 way arrow
	Ralt & Down::Send {bs}{U+2198} ; se single arrow
#if

;DOUBLE ARROWS

#if GetKeyState("Up","P")
	Ralt & Left::Send {bs}{U+21D6} ; nw double arrow
	Ralt & Down::Send {bs}{U+21D5} ; double vertical 2 way arrow
	Ralt & Right::Send {bs}{U+21D7} ; ne double arrow
#if

#if GetKeyState("Left","P")
	Ralt & Up::Send {bs}{U+21D6} ; nw double arrow
	Ralt & Down::Send {bs}{U+21D9} ; sw double arrow
	Ralt & Right::Send {bs}{U+21D4} ; double horizontal 2 way arrow
#if

#if GetKeyState("Down","P")
	Ralt & Up::Send {bs}{U+21D5} ; double vertical 2 way arrow
	Ralt & Left::Send {bs}{U+21D9} ; sw double arrow
	Ralt & Right::Send {bs}{U+21D8} ; se double arrow
#if

#if GetKeyState("Right","P")
	Ralt & Up::Send {bs}{U+21D7} ; ne double arrow
	Ralt & Left::Send {bs}{U+21D4} ; double horizontal 2 way arrow
	Ralt & Down::Send {bs}{U+21D8} ; se double arrow
#if

#if GetKeyState("Shift","P")
	Ralt & Up::Send {U+21D1} ; up double arrow
	Ralt & Left::Send {U+21D0} ; left double arrow
	Ralt & Down::Send {U+21D3} ; down double arrow
	Ralt & Right::Send {U+21D2} ; right double arrow
#if
