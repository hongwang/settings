+!b::run C:\Program Files\Google\Chrome\Application\chrome.exe
+!c::run D:\Program Files\ConEmu\ConEmu.exe
+!d::run D:\Program Files\Youdao\Dict\YodaoDict.exe
+!e::run C:\Program Files\Sublime Text 2\sublime_text.exe
+!f::run D:\tools\FSCapture_7.4_Chs_Green\FSCapture.exe
+!n::run D:\Program Files\Evernote\Evernote\Evernote.exe
+!s::run D:\Program Files\Everything\Everything.exe
+!t::run D:\Program Files\TeamViewerPortable\TeamViewer.exe
+!r::run C:\Program Files (x86)\Remote Desktop Connection Manager\RDCMan.exe

#m:: run control.exe main.cpl,@0
#n:: run control.exe netconnections
#f:: run control.exe Firewall.cpl

#s::run D:\stash

#c::
KeyWait c
KeyWait LWin
SendMessage, 0x112, 0xF170, 2,,ahk_id 0xFFFF
return

/*
+!c::
IfWinExist ~
{
    WinActivate
}
else
{
    run D:\cygwin\Cygwin.bat
    WinWait ~
    WinActivate
}
return
*/







