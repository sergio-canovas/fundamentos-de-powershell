# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Segunda versión: parámetros

param (
    [Parameter(Mandatory)]
    [string]$Ruta
)

# Comprobamos que la carpeta existe antes de empezar
if (-not (Test-Path -Path $Ruta -PathType Container)) {
    Write-Error "La carpeta $Ruta no existe."
    return
}
