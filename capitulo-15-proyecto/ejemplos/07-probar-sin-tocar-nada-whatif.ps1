# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Probar sin tocar nada: -WhatIf

Copy-Item -Path C:\Temp\Kaos\impresora1.jpg -Destination C:\Temp\Kaos\2019 -WhatIf

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# What If: Realizando la operación "Copiar archivo" en el objetivo "Elemento: C:\Temp\Kaos\impresora1.jpg Destino: C:\Temp\Kaos\2019".
