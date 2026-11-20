# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando usuarios > Contraseñas

# ¡CUIDADO! Este script hace cambios en Active Directory.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

# Pedimos la nueva clave sin que se vea en pantalla
$nuevaClave = Read-Host -Prompt "Nueva contraseña" -AsSecureString

# Obtenemos los usuarios de Madrid y les cambiamos la clave
$usuarios = Get-ADUser -Filter "Office -like '*madrid*'"
$usuarios | Set-ADAccountPassword -Reset -NewPassword $nuevaClave

# Y les obligamos a cambiarla en su próximo inicio de sesión
$usuarios | Set-ADUser -ChangePasswordAtLogon $true
