# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Ejercicio de nivel 3
#
# Enunciado: Crea el archivo `puestos.csv` con el código siguiente. Después, usando la
# clase `Equipo` con el constructor de tres parámetros, fabrica un objeto por cada fila
# del CSV, guárdalos en `$almacen` y muestra solo los equipos con Windows 10. Pregunta
# extra: en el capítulo 12 vimos que `Import-Csv` lo devuelve todo como texto. ¿De qué
# tipo es la propiedad `puesto` de tus objetos? ¿Por qué?

New-Item -Path C:\Practicas\Datos -ItemType Directory -Force | Out-Null

Set-Content -Path C:\Practicas\Datos\puestos.csv -Value @(
    "Nombre,Puesto,SO"
    "CAT-BLDRQG2,1,Windows 10"
    "CAT-FNL8Q02,2,Windows 11"
    "CAT-BB0TQG2,3,Windows 10"
    "CAT-GYN0Q02,4,Windows 11"
)
