# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: La IA y tú

$archivos = Get-ChildItem -Path "C:\Temp" -File

foreach ($archivo in $archivos) {
    $tamanoKB = [math]::Round($archivo.Length / 1KB, 2)
    Write-Host "$($archivo.Name): $tamanoKB KB"
}
