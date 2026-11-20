# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Solución del ejercicio de nivel 1
#
# Enunciado: Crea un archivo `registro.txt` cuya primera línea sea "Inicio del script: "
# seguido de la fecha y la hora actuales. Añade tres líneas más: "Copiando archivos...",
# "Comprimiendo..." y "Fin del script". Después, muestra solo las dos últimas líneas y
# cuántas líneas tiene el archivo en total.

Set-Content -Path registro.txt -Value "Inicio del script: $(Get-Date)"
Add-Content -Path registro.txt -Value "Copiando archivos..."
Add-Content -Path registro.txt -Value "Comprimiendo..."
Add-Content -Path registro.txt -Value "Fin del script"

Get-Content -Path registro.txt -Tail 2
(Get-Content -Path registro.txt).Count

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Comprimiendo...
# Fin del script
# 4
