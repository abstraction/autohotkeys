; Motivation: UI sucks so trying to let go of Parallels UI key mapper
; Still using UI for
; Cmd -> Ctrl
; Opt -> Alt
; Cmd+Shift+V -> Ctrl+Shift+V 
; ^ Not needed by I am paranoid because I broke PureText when I gave Supermemo
; admin access and PureText will simply a plebeian

; Quick Doc
; + Shift
; ! Alt/Opt
; ^ Ctrl/Cmd

#IfWinActive ahk_group SuperMemo
    {
        ; Don't think I have to send a CtrlUp event...
        ; NOTE default Macos kbd for this is Opt+L/R but we're changing it to
        
        ; Word hopping and selecting
        ; Cmd+Opt+L/R to prevent kbd conflix with Sm
        ^!Left::Send {CtrlDown}{Left} ; start of word boundary, like w
        ^!Right::Send {CtrlDown}{Right} ; start of prev word boundary,like b
        ^!+Left::Send {CtrlDown}{ShiftDown}{Left} ; select word boundary, like v-w
        ^!+Right::Send {CtrlDown}{ShiftDown}{Right} ; select prev word boundary, like v-b

        ; Line hopping and selecting
        ^Left::Send {Home} ; Line start
        ^Right::Send {End} ; Line end
        ; Page up down
        ^+Left::Send {ShiftDown}{Home} ; Select from line start
        ^+Right::Send {ShiftDown}{End} ; Select from ine end
        
        ; Note to self: don't bind Alt+Left from here, instead bind it from Parallels GUI because
        ; AHK has something called "#MenuMaskKey" which sends Ctrl with every Alt so what will be
        ; sent is Alt+Ctrl+Left (which in turn will send Alt+Home because of mapping on line 22)
        ; https://www.autohotkey.com/docs/Hotkeys.htm#Symbols

        ^Home::Send {AltDown}{PgUp}
        ^End:: Send {AltDown}{PgDn}
    }