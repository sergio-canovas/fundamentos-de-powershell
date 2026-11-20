# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Solución del ejercicio de nivel 1
#
# Enunciado: Usa `Get-Member` para averiguar qué propiedad de los servicios
# (`Get-Service`) indica si están en marcha. Después, muestra solo el nombre (`Name`) y el
# nombre descriptivo (`DisplayName`) de los servicios que se estén ejecutando.

Get-Service |
    Where-Object { $_.Status -eq "Running" } |
    Select-Object -Property Name, DisplayName
