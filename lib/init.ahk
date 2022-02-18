GroupAdd, SuperMemo, ahk_class TBrowser         ;; Browser
GroupAdd, SuperMemo, ahk_class TContents        ;; Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind          ;; Element window
GroupAdd, SuperMemo, ahk_class TElDATAWind      ;; Element Data window
GroupAdd, SuperMemo, ahk_class TSMMain          ;; Toolbar
GroupAdd, SuperMemo, ahk_class TPriorityDlg     ;; Priority Dialog

;; Variable assignment
SmBrowser := "TBrowser"
SmContents := "TContents"
SmElements := "TElWind"
SmElementData := "TElDATAWind"
SmToolbar := "TSMMain"
SmPriorityDlg := "TPriorityDlg"

;; Safetly mechanism.
;; TODO Too lazy to write comment right now
SafeActivateWdw(wdwClass, waitActive) {
    if WinExist("ahk_class " . wdwClass) {
        WinActivate ahk_class %wdwClass%
        if (waitActive)
            WinWaitActive ahk_class %wdwClass%
        return true
    }
    return false
}

;; Example: ActivateWdw(true, true, SmContents)
;; Above, the program will safetly wait (prevent misclicks or wrong keypressed) until "SmContents" window is in focus
ActivateWdw(waitActive = true, notify = false, wdwName = "") {
    found := SafeActivateWdw(wdwName, waitActive)
    return found
}