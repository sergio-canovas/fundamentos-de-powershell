# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: La IA y tú

$archivos = Get-ChildItem -Path "C:\Temp" -File

for ($i = 0; $i -le $archivos.Count; $i++) {
    $tamanoKB = [math]::Round($archivos[$i].Length / 1KB, 2)
    Write-Host "$($archivos[$i].Name): $tamanoKB KB"
}
