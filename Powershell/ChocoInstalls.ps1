#install choco on local machine
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) #use elevated command

# tag::CreateTextFile[]
Remove-Variable fileLoc #<.>
$fileLoc="$Env:USERPROFILE\Documents\PowerShell\chocoHelp.txt" #<.>
choco /? | Out-File $fileLoc #<.>
Start-Process notepad++ $fileLoc #<.>
# end::CreateTextFile[]
choco -v
choco outdated