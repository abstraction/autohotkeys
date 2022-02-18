; Press Ctrl+Opt+Space

#IfWinActive

Alt & Space::
WinActivate ahk_class TElWind
send, !{F1}
sleep, 500
send, !s
keywait, Enter, D T10
send, !d
return