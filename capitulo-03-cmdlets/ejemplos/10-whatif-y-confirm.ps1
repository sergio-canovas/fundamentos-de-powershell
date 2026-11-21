# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Parámetros de cmdlets > -WhatIf y -Confirm

Remove-Item -Path "C:\Practicas\Copias\hola.txt" -WhatIf

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# What If: Realizando la operación "Quitar archivo" en el objetivo "C:\Practicas\Copias\hola.txt".
