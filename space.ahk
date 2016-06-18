;AHK scripts need a BOM to handle UTF-8 properly. Keep that in mind.
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

;U+1f440
::;eyes;::👀

;U+1f4af
::;100;::💯

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
::;hm;::🤔

;U+1f60e
::;sunglasses;::😎

;U+1f62f
::;scared;::😯

;U+1f61f
::;upset;::😟

;U+1f626
::;upset2;::😦

;U+1f627
::;upset3;::😧

;U+1f628
::;upset4;::😨
::;shock;::😨

;U+1f620
::;angry;::😠

;U+1f62c
::;grimace;::😬

;U+1f635
::;dizzy;::😵
::;dead;::😵

;U+1f610
::;neutral;::😐

;U+1f636
::;blank;::😶

;U+1f60d
::;hearteyes;::😍

;U+1f60f
::;smug;::😏

;U+1f612
::;unimpressed;::😒

;U+1f614
::;sad;::😔

;U+1f633
::;blush;::😳

;U+1f644
::;eyeroll;::🙄

;===CAT FACES===

;U+1f63a--U+1f63e
::;catsmile;::😺
::;catgrin;::😸
::;catlaugh;::😹

::;cathearteyes;::😻
::;catlove;::😻

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

;u+1f919
::;callme;::🤙

;===END EMOJI BLOCK===

;===ACTIONS===

PrintScreen::
	Run, C:\Program Files (x86)\Gyazo\Gyazowin.exe
Return

;Open the downloads folder with Win+j
#j::Run %USERPROFILE%\Downloads

;Open Powershell with Win+f
#f::Send ^l powershell {enter}

;I don't know what these lines were supposed to do
;so I commented them out. I hope this doesn't break
;anything
;Send !d
        ;ControlGetText Path , Edit1
        ;Send {Enter}

;Win+Left Shift toggles capslock
#LShift::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else
    SetCapsLockState, AlwaysOn
Return

;Media shortcuts!
Pause::Send {Media_Play_Pause}
Ralt & Pause::Send {Media_Next}
RShift & Pause::Send {Media_Prev}

Ralt & Enter::Send {NumpadEnter}

;===MISC SYMBOLS===

;em dash
;u+2014
RAlt & m::Send —

;en dash
;u+2013
RAlt & n::Send –

;quotes
;u+2018--u+201c
RAlt & `;::Send “
RAlt & '::Send ”
RAlt & [::Send ‘
RAlt & ]::Send ’

;registered trademark
;u+00ae
RAlt & r::Send ®

;tm
;u+2122
RAlt & t::Send ™

;degree sign
;u+00b0
RAlt & 0::Send °

;mid dot
;u+00b7
Ralt & ?::Send ·

;leq and geq
;u+2264 u+2265
Ralt & <::Send ≤
Ralt & >::Send ≥

;plus minus
;u+00b1
Ralt & -::Send ±

;approx equal to
;u+2248
Ralt & =::Send ≈

;copyright
;u+00a9
Ralt & c::Send ©

;dagger
;u+2020
Ralt & d::Send †

;heart bullet / fleuron / hedera 
;U+2767
Ralt & h::Send ❧

;number sign
;u+2116
Ralt & o::Send №

;pilcrow
;u+00b6
Ralt & p::Send ¶

;section sign
;u+00a7
Ralt & s::Send §

;ref mark
;u+203b
Ralt & z::Send ※

;ellipsis
;u+2026
Ralt & e::Send …

;multiplication x
;u+00d7
Ralt & x::Send ×

;whitespace:

;zwnj
;u+200c
Ralt & j::Send {U+200c}

;tab
;u+0009
Ralt & b::Send {U+0009}


;===DIACRITICS===
Ralt & g::Send {U+0300} ; gravè
Ralt & a::Send {U+0301} ; acuté
Ralt & u::Send {U+0308} ; diaresis / umalaüt
Ralt & f::Send {U+0327} ; cedilla̧

#if GetKeyState("Shift","P")
	;double dagger
	;u+2021
	Ralt & d::Send ‡

	;em space
	;u+2003
	Ralt & m::Send {U+2003}

	;en space
	;u+2002
	Ralt & n::Send {U+2002}

	;neq
	;u+2260
	Ralt & =::Send ≠

	;guillemets
	;u+3008 and u+3009
	Ralt & ,::Send 〈
	Ralt & .::Send 〉
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
