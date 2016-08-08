﻿;AHK scripts need a BOM to handle UTF-8 properly. Keep that in mind.
;U+3b
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

;U+2714
::;check;::✔

;U+2718
::;x;::✘

;U+2610
::;emptycheck;::☐
::;checkempty;::☐

;U+2611
::;ballotcheck;::☑

;U+2612
::;ballotx;::☒

;U+25cb
::;circ;::○

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

;U+1f4ca
::;poll;::📊

;U+1f480
::;skull;::💀

;U+1f4a6
::;splash;::💦
::;water;::💦
::;sweat;::💦
::;thirst;::💦

;U+1f346
::;eggplant;::🍆

;===BOX DRAWING===

;U+2588
::;fullblock;::█

;U+2591
::;lightshade;::░

;U+2592
::;mediumshade;::▒

;U+2593
::;darkshade;::▓

;single lines

;U+2500
::;horizontal;::─

;U+2502
::;vertical;::│

;U+250c
::;topleft;::┌

;U+2510
::;topright;::┐

;U+2514
::;bottomleft;::└

;U+2518
::;bottomright;::┘

;U+251c
::;3wayright;::├

;U+2524
::;3wayleft;::┤

;U+252c
::;3waydown;::┬

;U+2534
::;3wayup;::┴

;U+253c
::;cross;::┼
::;4way;::┼

;===PEOPLE===

;U+1f481
::;petty;::💁

;U+1f629
;im sorry this is all i can remember
::;dick;::😩

;U+1f937
::;shrug;::🤷

;U+1f64b
::;raisehand;::🙋

;U+1f926
::;facepalm;::🤦

;===FACES===

;U+1f643
::;upsidedown;::🙃

;U+1f924
::;drool;::🤤

;U+1f609
::;wink;::😉

;U+1f60a
::;smile;::😊

;U+1f604
::;grin;::😄

;U+1f642
::;happy;::🙂
::;smile2;::🙂

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
::;unamused;::😒

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

;U+1f64f
::;pray;::🙏

;U+1F64C
::;bless;::🙌

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

;U+1f919
::;callme;::🤙

;===END EMOJI BLOCK===

;===ACTIONS===

;PrintScreen::
	;Run, C:\Program Files (x86)\Gyazo\Gyazowin.exe
;Return

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
	Ralt & <::Send 〈
	Ralt & >::Send 〉
#if ; end shift block

;em dash
;U+2014
RAlt & m::Send —

;en dash
;U+2013
RAlt & n::Send –

;quotes
;U+2018--u+201c
RAlt & `;::Send “
RAlt & '::Send ”
RAlt & [::Send ‘
RAlt & ]::Send ’

;registered trademark
;U+00ae
RAlt & r::Send ®

;tm
;U+2122
RAlt & t::Send ™

;degree sign
;U+00b0
RAlt & 0::Send °

;mid dot
;U+00b7
Ralt & ?::Send ·

;leq and geq
;U+2264 u+2265
Ralt & ,::Send ≤
Ralt & .::Send ≥

;plus minus
;U+00b1
Ralt & -::Send ±

;approx equal to
;U+2248
Ralt & =::Send ≈

;copyright
;U+00a9
Ralt & c::Send ©

;dagger
;U+2020
Ralt & d::Send †

;heart bullet / fleuron / hedera 
;U+2767
Ralt & h::Send ❧

;number sign
;U+2116
Ralt & o::Send №

;pilcrow
;U+00b6
Ralt & p::Send ¶

;section sign
;U+00a7
Ralt & s::Send §

;ref mark
;U+203b
Ralt & z::Send ※

;ellipsis
;U+2026
Ralt & e::Send …

;multiplication x
;U+00d7
Ralt & x::Send ×

;whitespace:

;zwnj
;U+200c
Ralt & j::Send {U+200c}

;tab
;U+0009
Ralt & b::Send {U+0009}


;===DIACRITICS===
Ralt & g::Send {U+0300} ; gravè
Ralt & a::Send {U+0301} ; acuté
Ralt & u::Send {U+0308} ; diaresis / umalaüt
Ralt & f::Send {U+0327} ; cedilla̧

;ARROWS
;Single arrows
;U+2191
Ralt & Up::Send ↑
;U+2190
Ralt & Left::Send ←
;U+2193
Ralt & Down::Send ↓
;U+2192
Ralt & Right::Send →

#if GetKeyState("Up","P") and !GetKeyState("Shift","P")
	;U+2196
	Ralt & Left::Send {bs}↖
	;U+2195
	Ralt & Down::Send {bs}↕
	;U+2197
	Ralt & Right::Send {bs}↗
#if

#if GetKeyState("Left","P") and !GetKeyState("Shift","P")
	;U+2196
	Ralt & Up::Send {bs}↖
	;U+2199
	Ralt & Down::Send {bs}↙
	;U+2194
	Ralt & Right::Send {bs}↔
#if

#if GetKeyState("Down","P") and !GetKeyState("Shift","P")
	;U+2195
	Ralt & Up::Send {bs}↕
	;U+2199
	Ralt & Left::Send {bs}↙
	;U+2198
	Ralt & Right::Send {bs}↘
#if

#if GetKeyState("Right","P") and !GetKeyState("Shift","P")
	;U+2197
	Ralt & Up::Send {bs}↖
	;U+2194
	Ralt & Left::Send {bs}↔
	;U+2198
	Ralt & Down::Send {bs}↖
#if

;DOUBLE ARROWS

#if GetKeyState("Up","P")
	;U+21D6
	Ralt & Left::Send {bs}⇖
	;U+21D5
	Ralt & Down::Send {bs}⇕
	;U+21D7
	Ralt & Right::Send {bs}⇗
#if

#if GetKeyState("Left","P")
	;U+21D6
	Ralt & Up::Send {bs}⇖
	;U+21D9
	Ralt & Down::Send {bs}⇙
	;U+21D4
	Ralt & Right::Send {bs}⇔
#if

#if GetKeyState("Down","P")
	;U+21D5
	Ralt & Up::Send {bs}⇕
	;U+21D9
	Ralt & Left::Send {bs}⇙
	;U+21D8
	Ralt & Right::Send {bs}⇘
#if

#if GetKeyState("Right","P")
	;U+21D7
	Ralt & Up::Send {bs}⇗
	;U+21D4
	Ralt & Left::Send {bs}⇔
	;U+21D8
	Ralt & Down::Send {bs}⇘
#if

#if GetKeyState("Shift","P")
	;U+21D1
	Ralt & Up::Send ⇑
	;U+21D0
	Ralt & Left::Send ⇐
	;U+21D3
	Ralt & Down::Send ⇓
	;U+21D2
	Ralt & Right::Send ⇒
#if
