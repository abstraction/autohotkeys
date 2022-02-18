#MaxThreadsPerHotkey 2

^!R::
{
Stopp := 0
Loop, 200
{
if (Stopp)
    {
      break
    }
Send, ^+{Right}
Sleep, 100
Send, {Right}
Sleep, 15
}
}

^+Z:: Stopp:=1