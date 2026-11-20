# Fundamentos de PowerShell (2ª edición)
# Capítulo 8. Bucles.
# Apartado: ForEach > ForEach-Object

Get-ChildItem -Path $HOME -File | ForEach-Object {
    Write-Host $_.Name
}
