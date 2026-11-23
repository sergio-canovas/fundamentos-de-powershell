# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Enriqueciendo Invoke-Command con argumentos

# Pedimos la letra de unidad
$letra = Read-Host -Prompt "Introduce la letra de la unidad"

# Lista de equipos
$equipos = @("PC-RECEPCION", "PC-COMPRAS", "PC-ALMACEN")

# Creación de sesiones
$sesion =
    New-PSSession -ComputerName $equipos -Credential sergio.canovas

# Lanzamiento de comandos sobre las sesiones
Invoke-Command -Session $sesion -ScriptBlock {
    Get-Volume -DriveLetter $args[0]
} -ArgumentList $letra | Select-Object -Property PSComputerName,
    DriveLetter, SizeRemaining, Size

# Eliminar sesiones abiertas
Get-PSSession | Remove-PSSession
