# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Descripción: La IA y tú: el script de tu compañero, corregido y con -WhatIf para probarlo sin riesgo

$carpeta = "C:\Temp\Pruebas"
$respuesta = Read-Host "¿Seguro que quieres vaciar $carpeta? (s/n)"

if ($respuesta -eq "s") {
    # Quita -WhatIf solo cuando hayas comprobado que hace lo que esperas
    Remove-Item -Path "$carpeta\*" -Recurse -WhatIf
    Write-Host "Carpeta vaciada"
}
else {
    Write-Host "Operación cancelada"
}
