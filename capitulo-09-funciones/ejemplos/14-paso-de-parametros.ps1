# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Paso de parámetros

#Declaramos función.
function ping {
    param(
        [String]$web,
        [Int]$repeticiones
    )
    Test-Connection $web -Count $repeticiones
}

#Llamada a funciones.
ping -web "www.google.com" -repeticiones 2
ping -web "www.linkedin.com" -repeticiones 1
