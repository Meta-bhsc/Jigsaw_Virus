Expand-Archive -Path .\StartupFolder.zip -DestinationPath "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" -Force

Function Set-WallPaper($Value)
{
 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value "$value"

rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

Set-WallPaper -Value ".\picture.jpg"