# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Probar sin tocar nada: -WhatIf

function filtrador
{
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [int]$Anio,
        [string]$Ruta,
        [string]$Nombre
    )

    $rutaOrigen  = Join-Path -Path $Ruta -ChildPath $Nombre
    $rutaDestino = Join-Path -Path $Ruta -ChildPath $Anio

    if ($PSCmdlet.ShouldProcess($rutaOrigen, "Copiar a $rutaDestino")) {
        # Aquí va todo lo que crea o copia
    }
}
