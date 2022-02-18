;; Set Hook to the current element
;; Alt-Shift-`

#IfWinActive ahk_group SuperMemo
{
  !+`::
    {
      Send !c
      Sleep 1000
      if (ActivateWdw(true, true, SmContents)) {
        Send +{F10}
        ;	Sleep 1500
        Send c
        ;	Sleep 150
        Send e
        ;	Sleep 150
        Send y
        Sleep 60
        Send ^{F4}
      }
    }
  return
}