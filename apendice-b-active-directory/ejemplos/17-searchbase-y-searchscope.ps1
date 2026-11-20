# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: SearchBase y SearchScope

$destino = "OU=VAL,OU=WS,DC=PSMola,DC=com"

$base = Get-ADComputer -Filter "OperatingSystem -like 'Windows*'" -SearchBase $destino -SearchScope Base
$unNivel = Get-ADComputer -Filter "OperatingSystem -like 'Windows*'" -SearchBase $destino -SearchScope OneLevel
$todos = Get-ADComputer -Filter "OperatingSystem -like 'Windows*'" -SearchBase $destino -SearchScope Subtree

$base.Count
$unNivel.Count
$todos.Count

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 0
# 6
# 111
