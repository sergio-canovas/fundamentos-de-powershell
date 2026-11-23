# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Cuando algo falla: try/catch

try {
    if (-not (Test-Path -Path $rutaDestino)) {
        New-Item -Path $rutaDestino -ItemType Directory `
            -ErrorAction Stop | Out-Null
    }
    Copy-Item -Path $rutaOrigen -Destination $rutaDestino -ErrorAction Stop
    $resultado = "Copiado"
}
catch {
    Write-Warning "No se ha podido copiar $Nombre. $($_.Exception.Message)"
    $resultado = "Error: $($_.Exception.Message)"
}
