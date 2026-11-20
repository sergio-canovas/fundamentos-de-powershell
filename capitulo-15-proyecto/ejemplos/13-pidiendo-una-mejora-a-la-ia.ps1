# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Pidiendo una mejora a la IA

# ¡CUIDADO! Este script mueve ficheros y puede sobrescribir los que ya existen.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

# En filtrador.ps1 (el parámetro $Nombre pasa a ser $Origen, con la ruta completa)
try {
    if (-not (Test-Path -Path $rutaDestino)) {
        New-Item -Path $rutaDestino -ItemType Directory -ErrorAction Stop | Out-Null
    }
    Move-Item -Path $Origen -Destination $rutaDestino -Force
    $resultado = "Movido"
}
catch {
    Write-Warning "No se ha podido mover $Origen. $($_.Exception.Message)"
    $resultado = "Error: $($_.Exception.Message)"
}

# En Organizar.ps1
$listado = Get-ChildItem -Path $Ruta -Recurse

$resultados = foreach ($fichero in $listado) {
    filtrador -Anio $fichero.LastWriteTime.Year -Ruta $Ruta -Origen $fichero.FullName
}
