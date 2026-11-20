# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: ForEach

$archivos = Get-ChildItem -Path $HOME -File

foreach ($archivo in $archivos) {
    Write-Host "$($archivo.Name) ocupa $($archivo.Length) bytes"
}
