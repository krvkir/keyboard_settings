SetCapsLockState, AlwaysOff

; Two shifts change language
LShift & RShift::Send {Alt down}{Shift down}{Shift up}{Alt up}
RShift & LShift::Send {Alt down}{Shift down}{Shift up}{Alt up}

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

CapsLock & u::Send ^{Left}
CapsLock & i::Send {Up}
CapsLock & o::Send ^{Right}
CapsLock & k::Send {Down}
CapsLock & j::Send {Left}
CapsLock & l::Send {Right}
CapsLock & p::Send {PgUp}
CapsLock & `;::Send {PgDn}
CapsLock & ,::Send {Home}
CapsLock & .::Send {End}

CapsLock & d::Send {Backspace}
CapsLock & f::Send {Delete}
CapsLock & e::Send ^{Backspace}
CapsLock & r::Send ^{Delete}

CapsLock & h::Send {Enter}
CapsLock & g::Send {Esc}

CapsLock & t::Send {(}
CapsLock & y::Send {)}

CapsLock & b::Send {`[}
CapsLock & n::Send {`]}


#If GetKeyState("Shift")
CapsLock & i::Send +{Up}
CapsLock & k::Send +{Down}
CapsLock & j::Send +{Left}
CapsLock & l::Send +{Right}

CapsLock & u::Send ^+{Left}
CapsLock & o::Send ^+{Right}

CapsLock & ,::Send +{Home}
CapsLock & .::Send +{End}
CapsLock & d::Send +{Backspace}
CapsLock & f::Send +{Delete}

CapsLock & h::Send +{Enter}
CapsLock & g::Send +{Esc}

; CapsLock & t::Send {`\}
; CapsLock & y::Send {`/}

; CapsLock & b::Send {`{}
; CapsLock & n::Send {`}}

#If

#If GetKeyState("Alt")
CapsLock & i::Send ^{Up}
CapsLock & k::Send ^{Down}
CapsLock & j::Send ^{Left}
CapsLock & l::Send ^{Right}

CapsLock & ,::Send ^{Home}
CapsLock & .::Send ^{End}
CapsLock & d::Send ^{Backspace}
CapsLock & f::Send ^{Delete}

CapsLock & h::Send ^{Enter}
CapsLock & g::Send ^{Esc}
#If

#If GetKeyState("Ctrl")
CapsLock & i::Send !{Up}
CapsLock & k::Send !{Down}
CapsLock & j::Send !{Left}
CapsLock & l::Send !{Right}

CapsLock & ,::Send !{Home}
CapsLock & .::Send !{End}
CapsLock & d::Send !{Backspace}
CapsLock & f::Send !{Delete}

CapsLock & h::Send !{Enter}
CapsLock & g::Send !{Esc}
#If

; Esc::return
; Backspace::return
; Delete::return
; Enter::return
; ^Enter::return
; !Enter::return
AppsKey::RWin

#IfWinActive ahk_exe chrome.exe
    Shift & 3::Send {#}
#If

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive ahk_class TTOTAL_CMD
    !y::Send ^s
#If

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Edition -- emacs version (tricky) ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; *!i::Send {Up}
; *!k::Send {Down}
; *!j::Send {Left}
; *!l::Send {Right}

; #IfWinNotActive ahk_class Emacs
;     *^!i::Send ^{Up}
;     *^!k::Send ^{Down}
;     *^!j::Send ^{Left}
;     *^!l::Send ^{Right}

;     *!h::Send {Home}
;     *!+h::Send {End}

;     *!u::Send ^{Left}
;     *!o::Send ^{Right}

;     !n::Send {PgDn}
;     !+n::Send {PgUp}
; #If

; #IfWinNotActive ahk_class Emacs
;     !d::Send {Backspace}
;     !f::Send {Delete}
;     !e::Send ^{Backspace}
;     !r::Send ^{Delete}

;     ;; Copy and paste

;     !x::Send ^x
;     !v::Send ^v
;     !c::Send ^c
;     !z::Send ^z

;     !Space::Send {Shift Down}
; #If

; #IfWinNotActive ahk_class Emacs
; #If GetKeyState("Shift")
;     +!x::
; 	Send {Shift Up}
; 	Send ^x
;         Send {Right}
; 	return
;     +!c::
; 	Send {Shift Up}
; 	Send ^c
;         Send {Right}
; 	return
;     +^g::
; ;        Send {Shift Up}
; ;        Send {Right}
; ;        return
;     +ESC::
;         Send {Shift Up}
;         Send {Right}
;         return
;     +Backspace::
; 	Send {Shift Up}
; 	Send {Backspace}
; 	return
;     +Delete::
; 	Send {Shift Up}
; 	Send {Delete}
; 	return
; #If
