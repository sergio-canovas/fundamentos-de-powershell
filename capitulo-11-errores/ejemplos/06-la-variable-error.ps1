# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: La variable $Error

$Error[0].GetType()
$Error[0].Exception.Message
$Error[0].InvocationInfo.ScriptLineNumber

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     False    ErrorRecord                              System.Object
# No se encuentra la ruta de acceso 'C:\carpeta_inventada' porque no existe.
# 1
