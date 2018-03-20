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

;===CURRENCY===

::;yen;::¥
::;euro;::€
::;rupee;::₹
::;cent;::¢
::;won;::₩

;===MISC===

:C:;`:O;::⍥
:C:;`:o;::⍤
::;`:T;::⍡
::;`:D;::⍢
::;`:*;::⍣
::;`:~;::⍨
::;`:>;::⍩

::;?!;::‽

::;shr;::¯\_(ツ)_/¯

::;heart;::❤

::;fire;::🔥

::;check;::✔

::;x;::✘

::;emptycheck;::☐
::;checkempty;::☐

::;ballotcheck;::☑

::;ballotx;::☒

::;circ;::○

::;dog;::🐶

::;cat;::🐈

::;egg;::🥚

::;star;::⭐

::;pow;::💥
::;explosion;::💥

::;shootingstar;::🌠

::;mute;::🔇
::;no;::🚫
::;soon;::😜
::;lock;::🔒
::;wavy;::〰
::;sparkle;::✨
::;party;::🎉
::;eyes;::👀
::;100;::💯
::;poll;::📊
::;skull;::💀

::;water;::💦
::;sweat;::💦
::;thirst;::😩
::;eggplant;::🍆

::;seriously;::ಠ_ಠ
::;spicy;::ಥ_ಥ
::;horrible;::ಠ益ಠ

::;music;::🎶
::;gun;::🔫
::;party;::🎉
::;confetti;::🎊
::;warning;::⚠️

;===BOX DRAWING===

::;fullblock;::█

::;lightshade;::░

::;mediumshade;::▒

::;darkshade;::▓

;single lines

::;bar;::─

::;pipe;::│

::;tl;::┌

::;tr;::┐

::;bl;::└

::;br;::┘

::;3r;::├

::;3l;::┤

::;3d;::┬

::;3u;::┴

::;cross;::┼
::;4;::┼

;===PEOPLE===

::;petty;::💁

::;selfie;::🤳

;im sorry this is all i can remember
::;dick;::😩

::;shrug;::🤷

::;raisehand;::🙋

::;facepalm;::🤦

;===FACES===

::;upsidedown;::🙃

::;drool;::🤤

::;wink;::😉

::;smile;::😊

::;grin;::😄

::;happy;::🙂
::;smile2;::🙂

::;hmm;::🤔
::;hm;::🤔

::;sunglasses;::😎

::;scared;::😯

::;tear;::😢

::;cry;::😭
::;crying;::😭
::;crying;::😭

::;upset;::😟

::;upset2;::😦

::;upset3;::😧

::;upset4;::😨
::;shock;::😨

::;angry;::😠

::;grimace;::😬

::;dizzy;::😵
::;dead;::😵

::;neutral;::😐

::;blank;::😶

::;hearteyes;::😍

::;smug;::😏

::;unimpressed;::😒
::;unamused;::😒

::;sad;::😔

::;blush;::😳

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

::;pray;::🙏

::;bless;::🙌

::;clap;::👏

::;pointleft;::👈

::;pointright;::👉

::;pointup;::☝

::;pointup2;::👆

::;pointdown;::👇

::;fuckyou;::🖕
::;middlefinger;::🖕

::;peace;::✌

::;thumbs;::👍

::;thumbsdown;::👎

::;ok;::👌

::;hope;::🤞
::;wish;::🤞
::;crossedfingers;::🤞
::;fingerscrossed;::🤞

::;wave;::👋

::;rock;::🤘
::;devilhorns;::🤘

::;callme;::🤙

;===END EMOJI BLOCK===

;===DIACRITICS===
;http://unicode.org/charts/PDF/U0300.pdf
#Hotstring ?

::;acute;::̀
::;grave;::́

::;circumflex;::̂
::;hat;::̂

::;tilde;::̃
::;macron;::̄
::;breve;::̆
::;dotabove;::̇
::;diaeresis;::̈
::;hookabove;::̉
::;ringabove;::̊
::;caron;::̌
::;vertabove;::̍
::;candrabindu;::̐
::;invertedbreve;::̑
::;turnedcommaabove;::̒
::;commaabove;::̓
::;reversedcommaabove;::̔
::;commaaboveright;::̕
::;gravebelow;::̖
::;acutebelow;::̗
::;horn;::̛
::;dotbelow;::̣
::;diaresisbelow;::̤
::;ringbelow;::̥
::;commabelow;::̦
::;cedilla;::̧
::;ogonek;::̨

;yeah
::;pho;::phở

;kinda!
::;ae;::æ
::;ao;::ꜵ
::;fi;::ﬁ
::;fl;::ﬂ
::;st;::ﬆ
::;oe;::œ
::;ts;::ʦ
::;ue;::ᵫ
::;et;::🙰
::;sz;::ß

::;o";::ö

;===GREEK===
::;alpha;::α
::;beta;::β
::;gamma;::γ
::;delta;::δ
::;epsilon;::ε
::;zeta;::ζ
::;eta;::η
::;theta;::θ
::;iota;::ι
::;kappa;::κ
::;lambda;::λ
::;mu;::μ
::;nu;::ν
::;xi;::ξ
::;omicron;::ο
::;pi;::π
::;rho;::ρ
::;sigma;::σ
::;tau;::τ
::;upsilon;::υ
::;phi;::φ
::;chi;::χ
::;psi;::ψ
::;omega;::ω

::;Alpha;::Α
::;Beta;::Β
::;Gamma;::Γ
::;Delta;::Δ
::;Epislon;::Ε
::;Zeta;::Ζ
::;Eta;::Η
::;Theta;::Θ
::;Iota;::Ι
::;Kappa;::Κ
::;Lambda;::Λ
::;Mu;::Μ
::;Nu;::Ν
::;Xi;::Ξ
::;Omicron;::Ο
::;Pi;::Π
::;Rho;::Ρ
::;Sigma;::Σ
::;Tau;::Τ
::;Upsilon;::Υ
::;Phi;::Φ
::;Chi;::Χ
::;Psi;::Ψ
::;Omega;::Ω

;===MATH===
::;del;::∇

::;ceil;::⌈⌉{Left}
::;floor;::⌊⌋{Left}

::;inf;::∞

::;i;::𝑖

::;of;::∘

::;Z;::ℤ
::;R;::ℝ
::;Q;::ℚ
::;N;::ℕ

::;alef;::ℵ

::;f;::ƒ

::;all;::∀

::;exists;::∃

::;not;::¬

::;pm;::±

::;therefore;::∴

::;because;::∵
::;bc;::∵

::;intersection;::⋂
::;union;::⋃

::;ne;::≠
::;le;::≤
::;ge;::≥

::;:=;::≔
::;coloneq;::≔

::;id;::≡

::;sub;::⊂
::;nsub;::⊄
::;sup;::⊃
::;nsup;::⊅

::;sqrt;::√
::;angle;::∠
::;mangle;::∡
::;perp;::⊥
::;dot;::⋅

::;empty;::∅
::;null;::∅

::;derivative;::∂
::;deriv;::∂

::;integral;::∫
::;int;::∫

::;avg;::x̄
::;prime;::′
::;2prime;::″
::;3prime;::‴

::;reals;::ℝ
::;re;::ℝ

::;and;::∧
::;or;::∨
::;xor;::⊻

::;in;::∈
::;notin;::∉
::;member;::∋
::;notmember;::∌

::;sum;::∑

::;frac;::⁄

::;1/4;::¼
::;1/2;::½
::;3/4;::¾
::;1/3;::⅓
::;2/3;::⅔
::;1/5;::⅕
::;2/5;::⅖
::;3/5;::⅗
::;4/5;::⅘
::;1/6;::⅙
::;5/6;::⅚
::;1/8;::⅛
::;3/8;::⅜
::;5/8;::⅝
::;7/8;::⅞


::;^0;::⁰
::;^1;::¹
::;^2;::²
::;^3;::³
::;^4;::⁴
::;^5;::⁵
::;^6;::⁶
::;^7;::⁷
::;^8;::⁸
::;^9;::⁹

::;^+;::⁺
::;^-;::⁻
::;^=;::⁼
::;^(;::⁽
::;^);::⁾
::;^n;::ⁿ
::;^x;::ˣ


::;_0;::₀
::;_1;::₁
::;_2;::₂
::;_3;::₃
::;_4;::₄
::;_5;::₅
::;_6;::₆
::;_7;::₇
::;_8;::₈
::;_7;::₉

::;_+;::₊
::;_-;::₋
::;_=;::₌
::;_(;::₍
::;_);::₎
::;_n;::ₙ
::;_x;::ₓ

::;nul;::␀ ;Null
::;bs;::␈ ;Backspace
::;lf;::␊ ;Line Feed
::;ff;::␌ ;Form Feed
::;cr;::␍ ;Carriage Return

::;slash;::╱

#Hotstring 0

;===ACTIONS===

;Open the downloads folder with Win+j
#j::Run %USERPROFILE%\Downloads

;Open Powershell with Win+f
#f::Send ^l powershell {enter}

;I don't know what these lines were supposed to do so I commented them out. I
;hope this doesn't break anything
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

Ralt & Backspace::Send {Browser_Back}

;===MISC SYMBOLS===

#if GetKeyState("Shift","P")
	Ralt & Backspace::Send {Browser_Forward}
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

	;U+21D1
	Ralt & Up::Send ⇑
	;U+21D0
	Ralt & Left::Send ⇐
	;U+21D3
	Ralt & Down::Send ⇓
	;U+21D2
	Ralt & Right::Send ⇒
#if ; end shift block

;em dash
RAlt & m::Send —

;en dash
RAlt & n::Send –

;quotes
;U+2018--u+201c
RAlt & `;::Send “
RAlt & '::Send ”
RAlt & [::Send ‘
RAlt & ]::Send ’

;registered trademark
RAlt & r::Send ®

;tm
RAlt & t::Send ™

;degree sign
RAlt & 0::Send °

;bullet
Ralt & ?::Send •

;leq and geq
;U+2264 u+2265
Ralt & <::Send ≤
Ralt & >::Send ≥

;plus minus
Ralt & -::Send ±

;approx equal to
Ralt & =::Send ≈

;copyright
Ralt & c::Send ©

;dagger
Ralt & d::Send †

;heart bullet / fleuron / hedera 
Ralt & h::Send ❧

;number sign
Ralt & o::Send №

;pilcrow
Ralt & p::Send ¶

;section sign
Ralt & s::Send §

;ref mark
Ralt & z::Send ※

;ellipsis
Ralt & e::Send …

;multiplication x
Ralt & x::Send ×

;whitespace:

;zwnj
Ralt & j::Send {U+200c}

;tab
Ralt & b::Send {U+0009}

;===DIACRITICS===
Ralt & g::Send {U+0300} ; gravè
Ralt & a::Send {U+0301} ; acuté
Ralt & u::Send {U+0308} ; diaresis / umalaüt
Ralt & f::Send {U+0327} ; cedilla̧

;ARROWS
;Single arrows
Ralt & Up::Send ↑
Ralt & Left::Send ←
Ralt & Down::Send ↓
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

#IfWinActive Skype
Ctrl & Up::Send {Up}{AppsKey}d
Ctrl & NumpadUp::Send {Up}{AppsKey}d
#IfWinActive
