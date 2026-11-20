# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Paso de parámetros

function Nombre_de_funcion {
    param([TipoDeDato]$nombre_de_parametro)
    Write-Host "El parámetro es: $nombre_de_parametro"
    return "Fin"
}
