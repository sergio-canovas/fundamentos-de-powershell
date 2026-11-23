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
#      | No se puede validar el argumento en el parámetro "TargetName".
#      | El argumento es nulo o está vacío. Especifique un argumento que
#      | no sea NULL o esté vacío y, después, vuelva a intentar el
#      | comando.
