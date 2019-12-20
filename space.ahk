; NOTE: AHK needs a BOM to detect UTF-8.
; NOTE: AHK’s {U+xxxx} method only supports the BMP; it'll treat {U+1f914} as
; U+f914.

; Recommended for new scripts due to its superior speed and reliability.
SendMode, Input

#SingleInstance force

#Hotstring C  ; case-sensitive
#Hotstring ?  ; in-word expansion
#Hotstring *  ; no ending character required


; === CURRENCY ===
::;yen::¥
::;euro::€
::;cents::¢
::;won::₩
::;pound::£

; === MISC ===
::;?!::‽
::;cmd::⌘
::;sharp::♯
::;shr::¯\_(ツ)_/¯
::;lquot::❝
::;rquot::❞

; === EMOJI ===
::;dog::🐶
::;cat::🐈
::;star::⭐
::;heart::❤
::;fire::🔥
::;pow::💥
::;explosion::💥
::;shootingstar::🌠
::;mute::🔇
; ::;no:: 🚫
::;soon::😜
::;lock::🔒
::;wavy::〰
::;sparkle::✨
; ::;gun:: 🔫
::;party::🎉
::;eyes::👀
::;100::💯
::;poll::📊
::;skull::💀
; ::;squirt:: 💦
::;sweat::😅
::;thirst::😩
::;eggplant::🍆
::;horny::😩💦
::;seriously::ಠ_ಠ
::;spicy::ಥ_ಥ
::;horrible::ಠ益ಠ
::;confetti::🎊
::;warning::⚠️
::;petty::💁
::;selfie::🤳
; im sorry this is all i can remember
::;dick::😩
::;raisehand::🙋
::;facepalm::🤦
; === FACES ===
::;upsidedown::🙃
::;drool::🤤
::;wink::😉

; ::;grin:: 😄
::;smile::😊
::;hm::🤔
::;sunglasses::😎
::;scared::😯
::;tear::😢
::;cry::😭
::;shock::😨
::;angry::😠
:*0:;grimace::😬
::;dizzy::😵
::;dead::😵
::;neutral::😐
::;blank::😶
:*0:;hearteyes::😍
::;smug::😏
::;unamused::😒
::;sad::😔
::;blush::😳
::;eyeroll::🙄

; === HANDS ===
::;pray::🙏
::;bless::🙌
::;clap::👏
::;peace::✌
::;ok::👌
::;fingerscrossed::🤞
::;wave::👋
::;callme::🤙
::;tu::👍
::;td::👎
; yeah
::;pho::phở
; kinda!
::;ae::æ
::;oe::œ
::;sz::ß
::;o"::ö

; === GREEK ===
::;ga::α
::;gb::β
::;gc::χ
::;gd::δ
::;geps::ε
::;geta::η
::;gg::γ
::;gi::ι
::;gk::κ
::;gl::λ
::;gm::μ
::;gn::ν
::;gome::ω
::;gomi::ο
::;gpi::π
::;gphi::φ
::;gpsi::ψ
::;gr::ρ
::;gs::σ
::;gtau::τ
::;gth::θ
::;gu::υ
::;gx::ξ
::;gz::ζ

::;Ga::Α
::;Gb::Β
::;Gc::Χ
::;Gd::Δ
::;Geps::Ε
::;Geta::Η
::;Gg::Γ
::;Gi::Ι
::;Gk::Κ
::;Gl::Λ
::;Gm::Μ
::;Gn::Ν
::;Gome::Ω
::;Gomi::Ο
::;Gphi::Φ
::;Gpi::Π
::;Gpsi::Ψ
::;Gr::Ρ
::;Gs::Σ
::;Gtau::Τ
::;Gth::Θ
::;Gu::Υ
::;Gx::Ξ
::;Gz::Ζ

; === MATH ===
::;del::∇
::;ceil::⌈⌉{Left}
::;floor::⌊⌋{Left}
::;inf::∞
::;after::∘
::;Z::ℤ
::;R::ℝ
::;Q::ℚ
::;N::ℕ
::;alef::ℵ
::;all::∀
::;exists::∃
::;not::¬
::;inter::⋂
::;union::⋃
::;:=::≔
::;equiv::≡
::;sub::⊂
::;nsub::⊄
::;sup::⊃
::;nsup::⊅
::;sq::√
::;perp::⊥
::;es::∅
::;pd::∂
:*0:;int::∫
::;'::′
::;"::″
::;and::∧
::;or::∨
::;mem::∈
::;nmem::∉
::;mapsto::↦
::;sum::∑

::;^0::⁰
::;^1::¹
::;^2::²
::;^3::³
::;^4::⁴
::;^5::⁵
::;^6::⁶
::;^7::⁷
::;^8::⁸
::;^9::⁹

::;^+::⁺
::;^-::⁻
::;^=::⁼
::;^(::⁽
::;^)::⁾
::;^n::ⁿ
::;^x::ˣ

::;_0::₀
::;_1::₁
::;_2::₂
::;_3::₃
::;_4::₄
::;_5::₅
::;_6::₆
::;_7::₉
::;_8::₈
::;_+::₊
::;_-::₋
::;_=::₌
::;_(::₍
::;_)::₎
::;_n::ₙ
::;_x::ₓ

#Hotstring 0

;===ACTIONS===
; Open the downloads folder with Win+j
#j::Run %USERPROFILE%\Downloads

; Media shortcuts!
Pause::Send {Media_Play_Pause}
Ralt & Pause::Send {Media_Next}
RShift & Pause::Send {Media_Prev}

Ralt & Enter::Send {NumpadEnter}
Ralt & i::Send {NumpadInsert}  ; For NVDA
Ralt & Backspace::Send {Browser_Back}

;===MISC SYMBOLS===
#if GetKeyState("Shift","P")
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

	Ralt & ?::Send ⋅  ; Center-dot
#if ; end shift block

;quotes
;U+2018--u+201c
RAlt & `;::Send “
RAlt & '::Send ”
RAlt & [::Send ‘
RAlt & ]::Send ’

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

;===letters===

;copyright
Ralt & c::Send ©

;ellipsis
Ralt & e::Send …

Ralt & h::Send 😍

;zwnj
Ralt & j::Send {U+200c}

;em dash
RAlt & m::Send —

;en dash
RAlt & n::Send –

;number sign
Ralt & o::Send №

;pilcrow
Ralt & p::Send ¶

;registered trademark
RAlt & r::Send ®

;tm
RAlt & t::Send ™

;multiplication x
Ralt & x::Send ×

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
