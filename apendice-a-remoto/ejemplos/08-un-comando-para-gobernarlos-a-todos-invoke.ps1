# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Un comando para gobernarlos a todos: Invoke-Command

Invoke-Command -ComputerName $equipos -ScriptBlock { Get-Volume -DriveLetter C }
