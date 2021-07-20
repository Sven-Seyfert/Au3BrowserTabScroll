Func _exit()
    GUIDelete( $hGui )

    Exit
EndFunc

Func _isBrowserWindowActive()
    Local $sTitle = WinGetTitle( '[ACTIVE]' )

    Local Const $sChrome  = 'Google Chrome'
    Local Const $sFirefox = 'Mozilla Firefox'

    If Not StringInStr( $sTitle, $sChrome, 2 ) And Not StringInStr( $sTitle, $sFirefox, 2 ) Then
        Return False
    EndIf

    Return True
EndFunc

Func _isMouseInScrollableArea()
    Local $iYPosition = MouseGetPos()[1]

    If $iYPosition >= $iScrollablePixelFromTop Then
        Return False
    EndIf

    Return True
EndFunc
