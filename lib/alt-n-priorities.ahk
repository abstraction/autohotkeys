;; Alt-<0...9> Priorities
;; Randomly assign priority with a range

; Red / Orange zone (0%+)
Key0Start := 0.0000
Key0End := 2.0000
; Yellow zone (2%+)
Key1Start := 2.0000
Key1End := 10.0000
; Green zone (10%+)
Key2Start := 10.0000
Key2End := 20.0000
Key3Start := 20.0000
Key3End := 30.0000
; Sea blue zone (30% +)
Key4Start := 30.0000
Key4End := 40.0000
Key5Start := 40.0000
Key5End := 50.0000
Key6Start := 50.0000
Key6End := 60.0000
Key7Start := 60.0000
Key7End := 70.0000
; Purple / Dark blue zone (70% +)
Key8Start := 70.0000
Key8End := 80.0000
Key9Start := 80.0000
Key9End := 99.9999

#IfWinActive ahk_group SuperMemo
{
  !0::
    {
      send, !p
      Random, NewPriority, Key0Start,Key0End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !1::
    {
      send, !p
      Random, NewPriority, Key1Start,Key1End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !2::
    {
      send, !p
      Random, NewPriority, Key2Start,Key2End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !3::
    {
      send, !p
      Random, NewPriority, Key3Start,Key3End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !4::
    {
      send, !p
      Random, NewPriority, Key4Start,Key4End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !5::
    {
      send, !p
      Random, NewPriority, Key5Start,Key5End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !6::
    {
      send, !p
      Random, NewPriority, Key6Start,Key6End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !7::
    {
      send, !p
      Random, NewPriority, Key7Start,Key7End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !8::
    {
      send, !p
      Random, NewPriority, Key8Start,Key8End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
  !9::
    {
      send, !p
      Random, NewPriority, Key9Start,Key9End
      NewPriority := Format("{:.4f}", NewPriority)
      Send %NewPriority%
      Sleep 10
      Send {Enter}
    }
  return
}