Func _guiOverlay()
    $hGui = GUICreate('', @DesktopWidth * 3, $iScrollablePixelFromTop, 0, 0, $WS_POPUP, $WS_EX_TOPMOST + $WS_EX_TOOLWINDOW)
    WinSetTrans($hGui, '', 1)
    GUISetState(@SW_SHOW)
    GUIRegisterMsg($WM_MOUSEWHEEL, '_windowsMessage_mouseWheel')
EndFunc

Func _windowsMessage_mouseWheel($hWnd, $iMsg, $wParam, $lParam)
    Local $iMouseWheelDirection = _WinAPI_HiWord($wParam) / 120

    If $iMouseWheelDirection ==  1 Then $bIsWheelUp   = True
    If $iMouseWheelDirection == -1 Then $bIsWheelDown = True
EndFunc
