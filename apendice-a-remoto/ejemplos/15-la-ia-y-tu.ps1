# Fundamentos de PowerShell (2ª edición)
# Apéndice A. Reinando en tu red: administración remota.
# Apartado: La IA y tú

Invoke-Command -ComputerName PC-RECEPCION -ScriptBlock {
    if (Test-Path -Path $using:carpeta) {
        Remove-Item -Path "$using:carpeta\*" -Recurse -WhatIf
    }
}
