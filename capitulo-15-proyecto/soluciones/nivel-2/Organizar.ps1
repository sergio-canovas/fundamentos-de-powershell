# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Descripción: Solución del ejercicio de nivel 2: Organizar.ps1 completo, por año y mes
# Uso: .\Organizar.ps1 -Ruta C:\Temp\Kaos -WhatIf

[CmdletBinding(SupportsShouldProcess)]
param (
    [Parameter(Mandatory)]
    [string]$Ruta,

    [string]$Registro = "$PSScriptRoot\registro.csv"
)

# Importamos la función filtrador
. "$PSScriptRoot\filtrador.ps1"

# Comprobamos que la carpeta existe antes de empezar
if (-not (Test-Path -Path $Ruta -PathType Container)) {
    Write-Error "La carpeta $Ruta no existe."
    return
}

# Solo ficheros: las carpetas de los años no se tocan
$listado = Get-ChildItem -Path $Ruta -File

# Por cada fichero, calculamos el mes y llamamos a filtrador
$resultados = foreach ($fichero in $listado) {
    $mes = $fichero.LastWriteTime.ToString("MM")
    filtrador -Anio $fichero.LastWriteTime.Year -Mes $mes -Ruta $Ruta -Nombre $fichero.Name
}

# Con -WhatIf no se copia nada, así que no hay nada que registrar
if ($resultados) {
    $resultados | Export-Csv -Path $Registro -NoTypeInformation -Append -Encoding UTF8
    $resultados | Format-Table -AutoSize
}
