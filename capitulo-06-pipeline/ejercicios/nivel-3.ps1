# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Ejercicio de nivel 3
#
# Enunciado: Este comando debería mostrar los nombres de los cinco procesos que más CPU
# han consumido, pero el resultado no está ordenado por CPU: son cinco procesos
# cualesquiera. Encuentra el fallo y corrígelo.

Get-Process |
    Select-Object -Property Name |
    Sort-Object -Property CPU -Descending |
    Select-Object -First 5
