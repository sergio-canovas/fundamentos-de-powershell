# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: La IA y tú

# ¡CUIDADO! Este script hace cambios en Active Directory.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

Get-ADUser -Filter "SamAccountName -like '*bec*'" | Disable-ADAccount
