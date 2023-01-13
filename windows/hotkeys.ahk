; ^ is control, + is shift, # is win

SetCapsLockState, AlwaysOff
AppsKey::LWin

; Change keyboard layout
LAlt & space::Send {Alt down}{Shift down}{Shift up}{Alt up}

; Dashboard - to Win+`
#`::Send #{Tab}

; Switch (cycle through) workspaces
#NoEnv
#Persistent
Send ^#{Left}
vDesktop := 1   ; this must match the virtual desktop active when program starts if a sync isn't forced
return

#Tab::
if (vDesktop = 2) {
  vDesktop := 1
  Send ^#{Left}
} else {
  vDesktop := 2
  SendInput ^#{Right}
}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Movement/Edition (with capslock) ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Capslock & 1::Send {F1}
Capslock & 2::Send {F2}
Capslock & 3::Send {F3}
Capslock & 4::Send {F4}
Capslock & 5::Send {F5}
Capslock & 6::Send {F6}
Capslock & 7::Send {F7}
Capslock & 8::Send {F8}
Capslock & 9::Send {F9}
Capslock & 0::Send {F10}

CapsLock & q::Send {#}
CapsLock & [::Send {[}
CapsLock & ]::Send {]}

CapsLock & u::Send ^{Left}
CapsLock & i::Send {Up}
CapsLock & o::Send ^{Right}
CapsLock & k::Send {Down}
CapsLock & j::Send {Left}
CapsLock & l::Send {Right}
CapsLock & w::Send {PgUp}
CapsLock & s::Send {PgDn}
CapsLock & n::Send {Home}
CapsLock & m::Send {End}

CapsLock & ,::Send {,}
CapsLock & .::Send {.}
CapsLock & \::Send {\}
CapsLock & '::Send {'}
CapsLock & SC027::Send {;}

CapsLock & d::Send {Backspace}
CapsLock & f::Send {Delete}
CapsLock & e::Send ^{Backspace}
CapsLock & r::Send ^{Delete}
CapsLock & /::Send {/}
CapsLock & `::Send {``}

CapsLock & h::Send {Enter}
CapsLock & g::Send {Esc}

CapsLock & z::Send ^{z}
CapsLock & x::Send ^{x}
CapsLock & c::Send ^{c}
CapsLock & v::Send ^{v}
CapsLock & t::Send ^{t}

CapsLock & Enter::Send ^{Enter}

;; ... with Shift
#If GetKeyState("Shift")
CapsLock & q::Send {@}
CapsLock & [::Send {`{}
CapsLock & ]::Send {`}}

CapsLock & i::Send +{Up}
CapsLock & k::Send +{Down}
CapsLock & j::Send +{Left}
CapsLock & l::Send +{Right}

CapsLock & u::Send ^+{Left}
CapsLock & o::Send ^+{Right}

CapsLock & w::Send +{PgUp}
CapsLock & s::Send +{PgDn}
CapsLock & n::Send +{Home}
CapsLock & m::Send +{End}
CapsLock & d::Send +{Backspace}
CapsLock & f::Send +{Delete}

CapsLock & ,::Send +{<}
CapsLock & .::Send +{>}
CapsLock & \::Send {|}
CapsLock & SC027::Send {:}
CapsLock & '::Send {"} ;"
CapsLock & `::Send {~}
CapsLock & /::Send {?}

CapsLock & h::Send +{Enter}
CapsLock & g::Send +{Esc}

CapsLock & z::Send ^+{z}
CapsLock & x::Send ^+{x}
CapsLock & c::Send ^+{c}
CapsLock & v::Send ^+{v}
CapsLock & t::Send ^+{t}
#If

;; ... with Alt
#If GetKeyState("Alt")
CapsLock & i::Send ^{Up}
CapsLock & k::Send ^{Down}
CapsLock & j::Send ^{Left}
CapsLock & l::Send ^{Right}

CapsLock & w::Send ^{PgUp}
CapsLock & s::Send ^{PgDn}
CapsLock & n::Send ^{Home}
CapsLock & m::Send ^{End}
CapsLock & d::Send ^{Backspace}
CapsLock & f::Send ^{Delete}

CapsLock & ,::Send ^{,}
CapsLock & .::Send ^{.}

CapsLock & h::Send ^{Enter}
CapsLock & g::Send ^{Esc}
#If

;; ... with Control
#If GetKeyState("Ctrl")
CapsLock & i::Send !{Up}
CapsLock & k::Send !{Down}
CapsLock & j::Send !{Left}
CapsLock & l::Send !{Right}

CapsLock & w::Send !{PgUp}
CapsLock & s::Send !{PgDn}
CapsLock & n::Send !{Home}
CapsLock & m::Send !{End}
CapsLock & d::Send !{Backspace}
CapsLock & f::Send !{Delete}

CapsLock & ,::Send !{,}
CapsLock & .::Send !{.}

CapsLock & h::Send !{Enter}
CapsLock & g::Send !{Esc}
#If