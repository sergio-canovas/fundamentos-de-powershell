# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Ámbito de las variables

function equipo {
    $equipo = "VLC-1234567"
}

equipo
Test-Connection -ComputerName $equipo

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Test-Connection: C:\Practicas\funcion_ambitos.ps1:6
# Line |
#    6 |  Test-Connection -ComputerName $equipo
#      |                                ~~~~~~~
#      | Cannot validate argument on parameter 'TargetName'. The argument is null or empty. Provide an argument that is
#      | not null or empty, and then try the command again.
