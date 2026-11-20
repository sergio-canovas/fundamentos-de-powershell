# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando usuarios

$cuentas = Get-ADUser -Filter "Office -like '*madrid*'"

# Contamos usuarios
$cuentas.Count

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 380
