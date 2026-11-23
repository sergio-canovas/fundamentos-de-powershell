# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Solución del ejercicio
#
# Enunciado: Escribe una consulta que muestre el nombre de usuario (`SamAccountName`) y el
# nombre (`Name`) de las cuentas deshabilitadas de la OU `OU=Sistemas,DC=PSMola,DC=com`, y
# otra línea que diga cuántas son.

$deshabilitados = @(Get-ADUser -Filter "Enabled -eq 'False'" `
    -SearchBase "OU=Sistemas,DC=PSMola,DC=com")

$deshabilitados | Select-Object -Property SamAccountName, Name
"Cuentas deshabilitadas: $($deshabilitados.Count)"
