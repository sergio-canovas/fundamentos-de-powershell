# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: If, Elseif y Else > Condiciones compuestas

$ruta = "C:\Temp\Informes"

if (-not (Test-Path -Path $ruta)) {
    New-Item -Path $ruta -ItemType Directory
    Write-Host "Carpeta creada"
}
else {
    Write-Host "La carpeta ya existía"
}
