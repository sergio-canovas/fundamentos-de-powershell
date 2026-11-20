# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Acceso y manipulación de instancias de objetos

# Nombre del primer equipo
$almacen[0].nombre

# Sistema operativo del primer equipo
$almacen[0].so

# Cambiamos su número de puesto
$almacen[0].puesto = 5
Write-Host "$($almacen[0].nombre) ahora es el puesto $($almacen[0].puesto)"

# Y usamos su método Describir()
$almacen[0].Describir()

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# CAT-BLDRQG2
# Microsoft Windows 10 Enterprise
# CAT-BLDRQG2 ahora es el puesto 5
# CAT-BLDRQG2 (puesto 5)
