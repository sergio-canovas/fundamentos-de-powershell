# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Solución del ejercicio
#
# Enunciado: Este es opcional, porque necesitas una red con varios equipos para hacerlo.
# Escribe un script que pida con `Read-Host` el nombre de un servicio y muestre su estado
# en todos los equipos de `$equipos`, con el nombre de cada equipo en el resultado.

$equipos = @("PC-RECEPCION", "PC-COMPRAS", "PC-ALMACEN")
$servicio = Read-Host -Prompt "Introduce el nombre del servicio"

Invoke-Command -ComputerName $equipos -ScriptBlock {
    Get-Service -Name $using:servicio
} | Select-Object -Property PSComputerName, Name, Status
