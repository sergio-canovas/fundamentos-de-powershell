# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Descripción: Versión que mueve en lugar de copiar, ya revisada (apartado Pidiendo una mejora a la IA)
# El libro solo muestra los cambios. Este es el fichero completo.

function filtrador
{
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [int]$Anio,
        [string]$Ruta,
        [string]$Origen
    )

    $rutaDestino = Join-Path -Path $Ruta -ChildPath $Anio

    if ($PSCmdlet.ShouldProcess($Origen, "Mover a $rutaDestino")) {
        try {
            # Si no existe, crea la carpeta del año
            if (-not (Test-Path -Path $rutaDestino)) {
                New-Item -Path $rutaDestino -ItemType Directory -ErrorAction Stop | Out-Null
            }
            # Sin -Force y con -ErrorAction Stop
            Move-Item -Path $Origen -Destination $rutaDestino -ErrorAction Stop
            $resultado = "Movido"
        }
        catch {
            Write-Warning "No se ha podido mover $Origen. $($_.Exception.Message)"
            $resultado = "Error: $($_.Exception.Message)"
        }

        # Devolvemos una fila para el registro
        [PSCustomObject]@{
            Fecha     = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
            Fichero   = $Origen
            Destino   = $rutaDestino
            Resultado = $resultado
        }
    }
}
