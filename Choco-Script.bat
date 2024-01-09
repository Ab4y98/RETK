Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install git -y
choco install googlechrome
choco install firefox
choco install winrar -y
choco install ida-free -y
choco install x64dbg.portable -y
choco install sysinternals -y
choco install die -y
choco install vcredist-all -y
choco install vscode -y
choco install notepadplusplus -y
choco install hxd -y 
choco install pebear -y
choco install processhacker -y
choco install dotnet -y
choco install everything -y
choco install 7zip -y