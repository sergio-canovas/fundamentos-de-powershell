# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Un comando para gobernarlos a todos: Invoke-Command

$sesion = New-PSSession -ComputerName $equipos -Credential sergio.canovas
