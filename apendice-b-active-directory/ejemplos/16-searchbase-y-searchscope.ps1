# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: SearchBase y SearchScope

# Definimos la ruta
$destino = "OU=VAL,OU=WS,DC=PSMola,DC=com"

# Guardamos el listado en la variable $lista
$lista = Get-ADComputer -Filter "OperatingSystem -like 'Windows*'" -SearchBase $destino
$lista.Count

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 111
