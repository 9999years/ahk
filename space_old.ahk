SendMode, Input ; Recommended for new scripts due to its superior speed and reliability. SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance force

;printscreen run gyazo
PrintScreen::
	Run, C:\Program Files (x86)\Gyazo\Gyazowin.exe
Return

;win+j open downloads
#j::Run C:\Users\xyz\Downloads

;ctrl <-> capslock
CapsLock::Ctrl

;esc <-> tilde
Esc::`
`::Esc

#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

;ARROWS
F13 & Up::Send {U+2191} ; up arrow
F13 & Left::Send {U+2190} ; left arrow
F13 & Down::Send {U+2193} ; down arrow
F13 & Right::Send {U+2192} ; right arrow

#if GetKeyState("Up","P") and !GetKeyState("Shift","P")
	F13 & Left::Send {bs}{U+2196} ; nw single arrow
	F13 & Down::Send {bs}{U+2195} ; vertical 2 way arrow
	F13 & Right::Send {bs}{U+2197} ; ne single arrow
#if

#if GetKeyState("Left","P") and !GetKeyState("Shift","P")
	F13 & Up::Send {bs}{U+2196} ; nw single arrow
	F13 & Down::Send {bs}{U+2199} ; sw single arrow
	F13 & Right::Send {bs}{U+2194} ; horizontal 2 way arrow
#if

#if GetKeyState("Down","P") and !GetKeyState("Shift","P")
	F13 & Up::Send {bs}{U+2195} ; vertical 2 way arrow
	F13 & Left::Send {bs}{U+2199} ; sw single arrow
	F13 & Right::Send {bs}{U+2198} ; se single arrow
#if

#if GetKeyState("Right","P") and !GetKeyState("Shift","P")
	F13 & Up::Send {bs}{U+2197} ; ne single arrow
	F13 & Left::Send {bs}{U+2194} ; horizontal 2 way arrow
	F13 & Down::Send {bs}{U+2198} ; se single arrow
#if

;DOUBLE ARROWS

#if GetKeyState("Up","P")
	F13 & Left::Send {bs}{U+21D6} ; nw double arrow
	F13 & Down::Send {bs}{U+21D5} ; double vertical 2 way arrow
	F13 & Right::Send {bs}{U+21D7} ; ne double arrow
#if

#if GetKeyState("Left","P")
	F13 & Up::Send {bs}{U+21D6} ; nw double arrow
	F13 & Down::Send {bs}{U+21D9} ; sw double arrow
	F13 & Right::Send {bs}{U+21D4} ; double horizontal 2 way arrow
#if

#if GetKeyState("Down","P")
	F13 & Up::Send {bs}{U+21D5} ; double vertical 2 way arrow
	F13 & Left::Send {bs}{U+21D9} ; sw double arrow
	F13 & Right::Send {bs}{U+21D8} ; se double arrow
#if

#if GetKeyState("Right","P")
	F13 & Up::Send {bs}{U+21D7} ; ne double arrow
	F13 & Left::Send {bs}{U+21D4} ; double horizontal 2 way arrow
	F13 & Down::Send {bs}{U+21D8} ; se double arrow
#if

#if GetKeyState("Shift","P")
	F13 & Up::Send {U+21D1} ; up double arrow
	F13 & Left::Send {U+21D0} ; left double arrow
	F13 & Down::Send {U+21D3} ; down double arrow
	F13 & Right::Send {U+21D2} ; right double arrow
#if

;ROMAN NUMERALS

F13 & 1::Send {U+2160} ; I
F13 & 2::Send {U+2161} ; II
F13 & 3::Send {U+2162} ; III
F13 & 4::Send {U+2163} ; IV
F13 & 5::Send {U+2164} ; V
F13 & 6::Send {U+2165} ; VI
F13 & 7::Send {U+2166} ; VII
F13 & 8::Send {U+2167} ; VIII
F13 & 9::Send {U+2168} ; IX
F13 & 0::Send {U+2169} ; X

;GREEK
F13 & a::Send {U+03B1} ; alpha
F13 & b::Send {U+03B2} ; beta
F13 & g::Send {U+03B3} ; gamma
F13 & c::Send {U+03B3} ; gamma
F13 & d::Send {U+03B4} ; delta
F13 & e::Send {U+03B5} ; epislon
F13 & z::Send {U+03B6} ; zeta
F13 & h::Send {U+03B7} ; eta
F13 & j::Send {U+03B8} ; theta
F13 & i::Send {U+03B9} ; iota
F13 & k::Send {U+03BA} ; kappa
F13 & l::Send {U+03BB} ; lambda
F13 & m::Send {U+03BC} ; mu
F13 & n::Send {U+03BD} ; nu
F13 & q::Send {U+03BE} ; xi
F13 & o::Send {U+03BF} ; omicron
F13 & p::Send {U+03C0} ; pi
F13 & r::Send {U+03C1} ; rho
F13 & s::Send {U+03C3} ; sigma
;F13 & !s::Send {U+03C2} ; final sigma
F13 & t::Send {U+03C4} ; tau
F13 & u::Send {U+03C5} ; upsilon
F13 & f::Send {U+03C6} ; phi
F13 & x::Send {U+03C7} ; chi
F13 & y::Send {U+03C8} ; psi
F13 & w::Send {U+03C9} ; omega

#if GetKeyState("Shift","P")

	F13 & a::Send {U+0391} ; Alpha
	F13 & b::Send {U+0392} ; Beta
	F13 & g::Send {U+0393} ; Gamma
	F13 & c::Send {U+0393} ; Gamma
	F13 & d::Send {U+0394} ; Delta
	F13 & e::Send {U+0395} ; Epislon
	F13 & z::Send {U+0396} ; Zeta
	F13 & h::Send {U+0397} ; Eta
	F13 & j::Send {U+0398} ; Theta
	F13 & i::Send {U+0399} ; Iota
	F13 & k::Send {U+039A} ; Kappa
	F13 & l::Send {U+039B} ; Lambda
	F13 & m::Send {U+039C} ; Mu
	F13 & n::Send {U+039D} ; Nu
	F13 & q::Send {U+039E} ; Xi
	F13 & o::Send {U+039F} ; Omicron
	F13 & p::Send {U+03A0} ; Pi
	F13 & r::Send {U+03A1} ; Rho
	F13 & s::Send {U+03A3} ; Sigma
	F13 & t::Send {U+03A4} ; Tau
	F13 & u::Send {U+03A5} ; Upsilon
	F13 & f::Send {U+03A6} ; Phi
	F13 & x::Send {U+03A7} ; Chi
	F13 & y::Send {U+03A8} ; Psi
	F13 & w::Send {U+03A9} ; Omega

#if ;end shift block

;MATH
F14 & Left::Send {U+22A3} ; left tack
F14 & Up::Send {U+22A5} ; up tack
F14 & Down::Send {U+22A4} ; down tack
F14 & Right::Send {U+22A2} ; right tack

F14 & 0::Send {U+2070} ; superscript 0
F14 & 1::Send {U+00B9} ; superscript 1
F14 & 2::Send {U+00B2} ; superscript 2
F14 & 3::Send {U+00B3} ; superscript 3
F14 & 4::Send {U+2074} ; superscript 4
F14 & 5::Send {U+2075} ; superscript 5
F14 & 6::Send {U+2076} ; superscript 6
F14 & 7::Send {U+2077} ; superscript 7
F14 & 8::Send {U+2078} ; superscript 8
F14 & 9::Send {U+2079} ; superscript 9
F14 & -::Send {U+207B} ; superscript -

F14 & [::Send {U+230A} ; left floor
F14 & ]::Send {U+230B} ; right floor
F14 & =::Send {U+2260} ; not equal to
F14 & '::Send {U+2032} ; prime
F14 & <::Send {U+2264} ; less than or equal to
F14 & >::Send {U+2265} ; greater than or equal to
F14 & ?::Send {U+00f7} ; division sign

#if GetKeyState("Shift","P") and GetKeyState("Alt","P")

	F14 & 9::Send {U+208D} ; superscript (
	F14 & 0::Send {U+208E} ; superscript )

#if ; end shift+alt

#if GetKeyState("Shift","P")

	F14 & 9::Send {U+207D} ; superscript (
	F14 & 0::Send {U+207E} ; superscript )
	
	F14 & =::Send {U+00B1} ; plus/minus sign
	F14 & [::Send {U+2308} ; left ceil
	F14 & ]::Send {U+2309} ; right ceil
	
	F14 & a::Send {U+2220} ; angle
	F14 & c::Send {U+2285} ; not superset
	F14 & e::Send {U+2204} ; there does not exists
	F14 & l::Send {U+2209} ; not element of
	F14 & k::Send {U+2099} ; superscript n
	F14 & h::Send {U+22AD} ; not true
	F14 & m::Send {U+220C} ; not contains as member
	F14 & r::Send {U+211C} ; fractur R
	F14 & u::Send {U+2229} ; union
	F14 & w::Send {U+2228} ; logic or
	F14 & x::Send {U+2284} ; not subset

#if ; end shift block

#if GetKeyState("Alt","P") 

	F14 & =::Send {U+2248} ; approximately equal to
	F14 & -::Send {U+208B} ; subscript -

	F14 & 0::Send {U+2080} ; subscript 0
	F14 & 1::Send {U+2081} ; subscript 1
	F14 & 2::Send {U+2082} ; subscript 2
	F14 & 3::Send {U+2083} ; subscript 3
	F14 & 4::Send {U+2084} ; subscript 4
	F14 & 5::Send {U+2085} ; subscript 5
	F14 & 6::Send {U+2086} ; subscript 6
	F14 & 7::Send {U+2087} ; subscript 7
	F14 & 8::Send {U+2088} ; subscript 8
	F14 & 9::Send {U+2089} ; subscript 9

#if ; end alt block

F14 & a::Send {U+2200} ; for all
F14 & b::Send {U+2235} ; because
F14 & c::Send {U+2283} ; superset
F14 & d::Send {U+2202} ; differential d
F14 & e::Send {U+2203} ; there exists
F14 & f::Send {U+222b} ; integral
F14 & g::Send {U+00AC} ; logic not
F14 & h::Send {U+22A8} ; true
F14 & i::Send {U+221E} ; infinity
F14 & k::Send {U+207F} ; superscript n
F14 & l::Send {U+2208} ; element of
F14 & n::Send {U+2115} ; bbold n
F14 & m::Send {U+220B} ; contains as member
F14 & o::Send {U+2205} ; null set
F14 & p::Send {U+22A5} ; perpendicular
F14 & q::Send {U+211A} ; bbold q
F14 & r::Send {U+211D} ; bbold r
F14 & s::Send {U+221A} ; sqrt
F14 & t::Send {U+2234} ; therefore
F14 & u::Send {U+222A} ; union
F14 & v::Send {U+00D7} ; multiplication x
F14 & x::Send {U+2282} ; subset
F14 & w::Send {U+2227} ; logic and
F14 & z::Send {U+2124} ; bbold z

;TYPOGRAPHY
F15 & Left::Send {U+261C} ; left fist
F15 & Up::Send {U+261D} ; up fist
F15 & Down::Send {U+261F} ; down fist
F15 & Right::Send {U+261E} ; right fist

F15 & 0::Send {U+00B0} ; degree
F15 & ?::Send {U+00B7} ; middle dot
F15 & Space::Send {U+2009} ; thin space
F15 & ,::Send {U+3008} ; open guillemet
F15 & .::Send {U+3009} ; close guillemet

F15 & `;::Send {U+201C} ; Open double quotes
F15 & '::Send {U+201D} ; Close double quotes

F15 & [::Send {U+2018} ; Open single quote
F15 & ]::Send {U+2019} ; Close single quote

#if GetKeyState("Shift","P")
	F15 & ?::Send {U+2022} ; bullet
	F15 & `;::Send {U+2018} ; Open single quote
	F15 & '::Send {U+2019} ; Close single quote
	F15 & ,::Send {U+00AB} ; open double guillemet
	F15 & .::Send {U+00BB} ; close double guillemet
	F15 & [::Send {U+301A} ; open double bracket
	F15 & ]::Send {U+301B} ; close double bracket

	F15 & d::Send {U+2021} ; double dagger
	F15 & m::Send {U+2003} ; em space
	F15 & n::Send {U+2002} ; en space
#if ; end shift block

F15 & c::Send {U+00A9} ; Copyright
F15 & d::Send {U+2020} ; dagger
F15 & h::Send {U+2767} ; heart bullet / fleuron / hedera 
F15 & m::Send {U+2014} ; em dash
F15 & n::Send {U+2013} ; en dash
F15 & o::Send {U+2116} ; Number sign
F15 & p::Send {U+00B6} ; Pilcrow / paragraph sign
F15 & r::Send {U+00AE} ; Registered trademark
F15 & s::Send {U+00A7} ; Section
F15 & t::Send {U+2122} ; TM
F15 & z::Send {U+203B} ; Reference mark

;DIACRITICS
F16 & g::Send {U+0300} ; grave
F16 & a::Send {U+0301} ; acute
F16 & h::Send {U+0302} ; hat / circumflex
F16 & d::Send {U+0308} ; diaresis / umalaut
F16 & c::Send {U+0327} ; cedilla

;GEOMETRIC
F17 & Up::Send {U+25B2} ; up triangle
F17 & Left::Send {U+25C0} ; left triangle
F17 & Down::Send {U+25BC} ; down triangle
F17 & Right::Send {U+25B6} ; right triangle

#if GetKeyState("Up","P") and !GetKeyState("Shift","P")
	F17 & Left::Send {bs}{U+25E4} ; nw black triangle
	F17 & Down::Send {bs}{U+25C6} ; vertical 2 way triangle
	F17 & Right::Send {bs}{U+25E5} ; ne black triangle
#if

#if GetKeyState("Left","P") and !GetKeyState("Shift","P")
	F17 & Up::Send {bs}{U+25E4} ; nw black triangle
	F17 & Down::Send {bs}{U+25E3} ; sw black triangle
	F17 & Right::Send {bs}{U+25C6} ; horizontal 2 way triangle
#if

#if GetKeyState("Down","P") and !GetKeyState("Shift","P")
	F17 & Up::Send {bs}{U+2195} ; vertical 2 way triangle
	F17 & Left::Send {bs}{U+25E3} ; sw black triangle
	F17 & Right::Send {bs}{U+25E2} ; se black triangle
#if

#if GetKeyState("Right","P") and !GetKeyState("Shift","P")
	F17 & Up::Send {bs}{U+25E5} ; ne black triangle
	F17 & Left::Send {bs}{U+25C6} ; horizontal 2 way triangle
	F17 & Down::Send {bs}{U+25E2} ; se black triangle
#if

;WHITE TRIANGLE

#if GetKeyState("Up","P")
	F17 & Left::Send {bs}{U+25F8} ; nw white triangle
	F17 & Down::Send {bs}{U+25C7} ; white vertical 2 way triangle
	F17 & Right::Send {bs}{U+25F9} ; ne white triangle
#if

#if GetKeyState("Left","P")
	F17 & Up::Send {bs}{U+25F8} ; nw white triangle
	F17 & Down::Send {bs}{U+25FA} ; sw white triangle
	F17 & Right::Send {bs}{U+25C7} ; white horizontal 2 way triangle
#if

#if GetKeyState("Down","P")
	F17 & Up::Send {bs}{U+25C7} ; white vertical 2 way triangle
	F17 & Left::Send {bs}{U+25FA} ; sw white triangle
	F17 & Right::Send {bs}{U+25FF} ; se white triangle
#if

#if GetKeyState("Right","P")
	F17 & Up::Send {bs}{U+25F9} ; ne white triangle
	F17 & Left::Send {bs}{U+25C7} ; white horizontal 2 way triangle
	F17 & Down::Send {bs}{U+25FF} ; se white triangle
#if

#if GetKeyState("Shift","P")
	F17 & Up::Send {U+25B3} ; up white triangle
	F17 & Left::Send {U+25C1} ; left white triangle
	F17 & Down::Send {U+25BD} ; down white triangle
	F17 & Right::Send {U+25B7} ; right white triangle
#if
