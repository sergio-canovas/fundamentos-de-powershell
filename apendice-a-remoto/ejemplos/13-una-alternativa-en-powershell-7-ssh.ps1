# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Una alternativa en PowerShell 7: SSH
# Usa -HostName (conexión por SSH), que solo existe en PowerShell 7.

Enter-PSSession -HostName servidor-linux -UserName sergio
Invoke-Command -HostName servidor-linux -UserName sergio `
    -ScriptBlock { Get-Process -Name pwsh }
