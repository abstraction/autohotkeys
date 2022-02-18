; Highlight Selection
; Alt-h

#IfWinActive ahk_group SuperMemo
{
  ^H::
    {
      send, ^{Enter}
      send, highlighter font
      send, {Enter}
    }
  return
}