; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.2.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Au3BrowserTabScroll)
#pragma compile(ProductVersion, 1.2.0 - 2021-10-21)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Au3BrowserTabScroll.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



; opt and just singleton -------------------------------------------------------
Opt('MustDeclareVars', 1)
Global $aInst = ProcessList('Au3BrowserTabScroll.exe')
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include <WinAPI.au3>
#include <WindowsConstants.au3>



; references -------------------------------------------------------------------
#include "Init.au3"
#include "Declaration.au3"
#include "GuiFunctions.au3"
#include "Functions.au3"



; processing -------------------------------------------------------------------
_guiOverlay()

While True
    If _isBrowserWindowActive() And _isMouseInScrollableArea() Then
        If $bIsWheelUp   Then Send('^{PGUP}')
        If $bIsWheelDown Then Send('^{PGDN}')
    EndIf

    $bIsWheelUp   = False
    $bIsWheelDown = False

    Sleep(150)
WEnd
