# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Dejando rastro: un registro en CSV

[PSCustomObject]@{
    Fecha     = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Fichero   = $Nombre
    Destino   = $rutaDestino
    Resultado = $resultado
}
