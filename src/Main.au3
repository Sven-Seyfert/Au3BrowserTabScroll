; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.7.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Au3BrowserTabScroll)
#pragma compile(ProductVersion, 1.7.0 - 2022-08-02)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\icons\favicon.ico
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



; modules ----------------------------------------------------------------------
#include "Init.au3"
#include "Initializer.au3"
#include "GuiFunctions.au3"
#include "Functions.au3"



; processing -------------------------------------------------------------------
_GuiOverlay()

While True
    If _IsBrowserWindowActive() And _IsMouseInScrollableArea() Then
        If $bIsWheelUp   Then Send('^{PGUP}')
        If $bIsWheelDown Then Send('^{PGDN}')
    EndIf

    $bIsWheelUp   = False
    $bIsWheelDown = False

    Sleep(150)
WEnd
