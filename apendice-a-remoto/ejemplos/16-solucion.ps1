# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Ejercicio > Solución

$equipos = @("PC-RECEPCION", "PC-COMPRAS", "PC-ALMACEN")
$servicio = Read-Host -Prompt "Introduce el nombre del servicio"

Invoke-Command -ComputerName $equipos -ScriptBlock {
    Get-Service -Name $using:servicio
} | Select-Object -Property PSComputerName, Name, Status
