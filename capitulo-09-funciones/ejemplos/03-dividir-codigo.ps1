# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Dividir código

function ping {
    Test-Connection -ComputerName www.google.com
}
#Guardamos el resultado de la función ping
$test = ping
#Mostramos el contenido de $test
$test
