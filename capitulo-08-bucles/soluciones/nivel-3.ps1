# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Solución del ejercicio de nivel 3
#
# Enunciado: El siguiente script debería mostrar solo los archivos de más de 1 MB de una
# carpeta, pero no muestra ninguno. Encuentra el fallo y corrígelo.

$archivos = Get-ChildItem -Path "C:\Temp" -File

foreach ($archivo in $archivos) {
    if ($archivo.Length -gt 1MB) {
        Write-Host $archivo.Name
    }
}
