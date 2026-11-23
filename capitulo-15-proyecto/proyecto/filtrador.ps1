# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: La versión final

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

    if ($PSCmdlet.ShouldProcess($rutaOrigen,
                                "Copiar a $rutaDestino")) {
        try {
            # Si no existe, crea la carpeta del año
            if (-not (Test-Path -Path $rutaDestino)) {
                New-Item -Path $rutaDestino -ItemType Directory `
                    -ErrorAction Stop | Out-Null
            }
            Copy-Item -Path $rutaOrigen -Destination $rutaDestino `
                -ErrorAction Stop
            $resultado = "Copiado"
        }
        catch {
            Write-Warning "No se ha podido copiar $Nombre. $($_.Exception.Message)"
            $resultado = "Error: $($_.Exception.Message)"
        }

        # Devolvemos una fila para el registro
        [PSCustomObject]@{
            Fecha     = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
            Fichero   = $Nombre
            Destino   = $rutaDestino
            Resultado = $resultado
        }
    }
}
