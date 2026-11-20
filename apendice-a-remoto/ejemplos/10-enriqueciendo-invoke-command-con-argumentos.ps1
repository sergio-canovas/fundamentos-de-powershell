# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: Enriqueciendo Invoke-Command con argumentos

Invoke-Command -Session $sesion -ScriptBlock {
    Get-Volume -DriveLetter $letra
}
