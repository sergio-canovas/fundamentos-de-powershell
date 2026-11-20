# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: La IA y tú

# ¡CUIDADO! Este script borra ficheros o carpetas sin preguntar.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

$carpeta = "C:\Temp\Pruebas"
$respuesta = Read-Host "¿Seguro que quieres vaciar $carpeta? (s/n)"

if ($respuesta = "s") {
    Remove-Item -Path "$carpeta\*" -Recurse
    Write-Host "Carpeta vaciada"
}
else {
    Write-Host "Operación cancelada"
}
