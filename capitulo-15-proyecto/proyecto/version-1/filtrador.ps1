# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Primera versión: la función filtrador

function filtrador
{
    param (
        [int]$year,
        [string]$ruta,
        [string]$name
    )

    [string]$rutaOrigen = $ruta + "\" + $name
    [string]$rutaDestino = $ruta + "\" + $year

    # Chequea si existe directorio con año.
    $existe = Test-Path $rutaDestino

    # Si no existe crea la carpeta.
    if (!$existe) {
        New-Item -Path $rutaDestino -ItemType Directory
    }

    Copy-Item -Path $rutaOrigen -Destination $rutaDestino
}
