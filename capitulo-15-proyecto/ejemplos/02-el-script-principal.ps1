# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: El script principal

filtrador -year $listado[0].LastWriteTime.Year `
    -ruta $ruta -name $listado[0].Name
