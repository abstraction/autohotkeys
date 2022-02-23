#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases
#SingleInstance, Force ; Run only one instance of this script at a time
SendMode Input ; Recommended for new scripts due to its superior speed and reliability
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory, probably not needed
SetTitleMatchMode,2 ; Window title can contain WinTitle anywhere inside it to be a match, https://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm
; CoordMode, Mouse, Screen ; When you want the script to use precise coordinates, https://www.autohotkey.com/docs/commands/CoordMode.htm

; %A_ScriptDir% Or %A_LineFile% ? %A_LineFile%/../ wins! https://www.autohotkey.com/docs/commands/_Include.htm
; SetWorkingDir has no effect on #Include because #Include is processed before the script begins executing

; Run SupermemoVim not include because we want to see Vim mode icon
; Run, %A_AHKPath% "%A_ScriptDir%/lib/SuperMemoVim/SuperMemoVim.ahk"
; Causing compatibility issues
; TODO create your own flavor
; Run command should not be at the en (tested) related: https://www.autohotkey.com/board/topic/37092-how-to-run-another-script/

; Initiate window variables, MUST be at the top
#Include %A_LineFile%/../lib/init.ahk

; Set priority (Alt-<0...9>)
#Include %A_LineFile%/../lib/alt-n-priorities.ahk

; Set Hook (Alt-Shift-`)
#Include %A_LineFile%/../lib/set-hook.ahk

; Highlight text (Alt-h)
#Include %A_LineFile%/../lib/highlight-selection.ahk

; Tab indent (Tab)
#Include %A_LineFile%/../lib/tab-indentation.ahk

