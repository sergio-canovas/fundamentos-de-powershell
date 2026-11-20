# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Un comando para gobernarlos a todos: Invoke-Command

# Lista de equipos
$equipos = @("PC-RECEPCION", "PC-COMPRAS", "PC-ALMACEN")

# Creación de sesiones
$sesion = New-PSSession -ComputerName $equipos -Credential sergio.canovas

# Lanzamiento de comandos sobre las sesiones
Invoke-Command -Session $sesion -ScriptBlock {
    Get-Volume -DriveLetter C
} | Select-Object -Property PSComputerName, DriveLetter, SizeRemaining, Size

# Eliminar sesiones abiertas
Get-PSSession | Remove-PSSession
