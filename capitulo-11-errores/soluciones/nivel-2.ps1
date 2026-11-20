# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Solución del ejercicio de nivel 2
#
# Enunciado: Escribe una función `Show-Fichero` que reciba la ruta de un fichero y muestre
# su contenido. Si el fichero no existe, debe mostrar "No encuentro el fichero" seguido de
# la ruta. Cualquier otro error debe mostrarse como "Error inesperado:" seguido del
# mensaje.

function Show-Fichero {
    param([String]$ruta)
    try {
        Get-Content -Path $ruta -ErrorAction Stop
    }
    catch [System.Management.Automation.ItemNotFoundException] {
        Write-Host "No encuentro el fichero $ruta"
    }
    catch {
        Write-Host "Error inesperado: $($_.Exception.Message)"
    }
}

Show-Fichero -ruta "C:\Temp\no_existe.txt"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# No encuentro el fichero C:\Temp\no_existe.txt
