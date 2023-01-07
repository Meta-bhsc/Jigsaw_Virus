taskkill /f /t /im CloseResponder.exe
del .\Delete.exe
Powershell.exe -executionpolicy remotesigned -File  .\RemoveDelete.ps1
taskkill /f /t /im CloseResponder.exe
del .\CloseResponder.exe
Noti.vbs