; Motivation: UI sucks so trying to let go of Parallels UI key mapper
; Still using UI for
; Cmd -> Ctrl
; Opt -> Alt
; Cmd+Shift+V -> Ctrl+Shift+V 
; ^ Not needed by I am paranoid because I broke PureText when I gave Supermemo
; admin access and PureText will simply a plebeian

#IfWinActive ahk_group SuperMemo
{

    ; Don't think I have to send a CtrlUp event? isn't not pressing the key basically it? 
    ^!Left::Send {CtrlDown}{Left} ; start of word boundary, like w
    ^!Right::Send {CtrlDown}{Right} ; start of prev word boundary,like b
    ^!+Left::Send {CtrlDown}{ShiftDown}{Left} ; select word boundary, like v-w
    ^!+Right::Send {CtrlDown}{ShiftDown}{Right} ; select prev word boundary, like v-b

    ^Left::Send {Home} ; Line start
    ^Right::Send {End} ; Line end
    ^+Left::Send {ShiftDown}{Home} ; Select from line start
    ^+Right::Send {ShiftDown}{End} ; Select from ine end

}