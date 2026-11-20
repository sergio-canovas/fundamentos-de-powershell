# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: La IA y tú

# ¡CUIDADO! Este script borra ficheros o carpetas sin preguntar.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

$equipos = Get-Content -Path C:\Scripts\equipos.txt
$carpeta = "C:\ProgramData\AppVentas\Logs"

Invoke-Command -ComputerName $equipos -ScriptBlock {
    Remove-Item -Path "$carpeta\*" -Recurse -Force
}
