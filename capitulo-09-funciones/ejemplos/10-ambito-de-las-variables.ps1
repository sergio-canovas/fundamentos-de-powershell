# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Ámbito de las variables

function equipo {
    $global:equipo = "www.google.com"
}
#Llamada a función
equipo
#Uso de variable global
Test-Connection -ComputerName $equipo
