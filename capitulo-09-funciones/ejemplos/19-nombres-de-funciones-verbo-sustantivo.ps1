# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Nombres de funciones: Verbo-Sustantivo

function Test-Web {
    param(
        [Parameter(Mandatory)]
        [String]$web,
        [Int]$repeticiones = 1
    )
    Test-Connection $web -Count $repeticiones
}

Test-Web -web "www.google.com" -repeticiones 2
