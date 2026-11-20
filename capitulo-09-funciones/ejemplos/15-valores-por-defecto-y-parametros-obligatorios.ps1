# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Paso de parámetros > Valores por defecto y parámetros obligatorios

function ping {
    param(
        [String]$web,
        [Int]$repeticiones = 1
    )
    Test-Connection $web -Count $repeticiones
}

ping -web "www.google.com"
ping "www.linkedin.com" 2
