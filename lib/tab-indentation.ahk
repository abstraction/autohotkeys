; Tab indentation
; Tab

#IfWinActive ahk_group SuperMemo
{

  Tab::
    if (ActivateWdw(true, true, SmElements)) {
      Loop, 4{
          send, {space} ;; Once, a tab and 4 spaces walked into a bar and only spaces came out
          ;; Use Ctrl-T instead of Tab to cycle components
          ;; TODO ^ see of you can make this work
      }
    }
  Return

}