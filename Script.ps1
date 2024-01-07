try {
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}
catch {
    Write-Host "An error occurred while running the first command: $_"
}

try {
    $adminCommands = @'
        scoop install git
        scoop bucket add extras
        scoop install extras/winrar
        scoop install extras/ida-free
        scoop install extras/x64dbg
        scoop install extras/sysinternals
        scoop install extras/detect-it-easy
        scoop install extras/vcredist2005
        scoop install extras/vcredist2008
        scoop install extras/vcredist2010
        scoop install extras/vcredist2012
        scoop install extras/vcredist2013
        scoop install extras/vcredist2022
        scoop install versions/vscode-insiders
        scoop install extras/notepadplusplus
        scoop install extras/pe-bear
        scoop install extras/processhacker
        scoop install main/dotnet-sdk
'@

    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command $adminCommands" -Verb RunAs -Wait
}
catch {
    Write-Host "An error occurred while running one of the commands: $_"
}

Copy-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Scoop Apps\Process Hacker.lnk" -Destination "C:\Users\$env:username\Desktop\"
Copy-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Scoop Apps\x32dbg.lnk" -Destination "C:\Users\$env:username\Desktop\"
Copy-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Scoop Apps\x64dbg.lnk" -Destination "C:\Users\$env:username\Desktop\"
Copy-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Scoop Apps\Notepad++.lnk" -Destination "C:\Users\$env:username\Desktop\"
Copy-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Scoop Apps\PE-bear.lnk" -Destination "C:\Users\$env:username\Desktop\"
Copy-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Scoop Apps\Detect It Easy.lnk" -Destination "C:\Users\$env:username\Desktop\"

Write-Host "[+] Finished!"

Pause
