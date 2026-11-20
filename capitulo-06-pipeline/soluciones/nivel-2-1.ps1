# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Solución del ejercicio de nivel 2
#
# Enunciado: Muestra los archivos de la carpeta C:\Windows (sin entrar en subcarpetas) que
# ocupen más de 1 MB, ordenados de mayor a menor, con su nombre y su tamaño. Después,
# averigua cuántos son y cuánto ocupan en total.

Get-ChildItem -Path C:\Windows -File |
    Where-Object { $_.Length -gt 1MB } |
    Sort-Object -Property Length -Descending |
    Select-Object -Property Name, Length
