# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: La IA y tú

try {
    Copy-Item -Path "C:\Datos\informe.xlsx" -Destination "C:\Copias\"
    Write-Host "Copia realizada correctamente"
}
catch {
    Write-Host "Error al copiar: $($_.Exception.Message)"
}
