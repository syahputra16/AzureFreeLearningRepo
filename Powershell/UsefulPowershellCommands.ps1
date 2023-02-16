$PSVersionTable #view version details of current Powershell
Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI" #update Powershell command
Get-ExecutionPolicy #view current execution policy
Get-ChildItem env: #get current environment variables https://www.tutorialspoint.com/how-to-get-environment-variable-value-using-powershell#:~:text=To%20retrieve%20all%20environment%20variables%20use%20GetEnvironmentVariables()%20class.&text=To%20get%20the%20specific%20environment,method%20use%20GetEnvironmentVariable()%20method.