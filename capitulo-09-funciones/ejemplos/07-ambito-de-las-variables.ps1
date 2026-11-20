# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Ámbito de las variables

$ejemplo = "Hola"
Write-Host "Variable en padre: $ejemplo"

function Saludo {
    Write-Host "Variable dentro de función hija tras lectura: $ejemplo"
    #Reasignamos nuevo valor a string
    $ejemplo = "Adios"
    Write-Host "Variable dentro de función hija tras edición: $ejemplo"
}

Saludo
Write-Host "Variable después de la función (no se ha modificado): $ejemplo"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Variable en padre: Hola
# Variable dentro de función hija tras lectura: Hola
# Variable dentro de función hija tras edición: Adios
# Variable después de la función (no se ha modificado): Hola
