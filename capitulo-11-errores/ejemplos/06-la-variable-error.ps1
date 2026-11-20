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
# Cannot find path 'C:\carpeta_inventada' because it does not exist.
# 1
