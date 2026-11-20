# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Ejercicio > Solución

$deshabilitados = @(Get-ADUser -Filter "Enabled -eq 'False'" -SearchBase "OU=Sistemas,DC=PSMola,DC=com")

$deshabilitados | Select-Object -Property SamAccountName, Name
"Cuentas deshabilitadas: $($deshabilitados.Count)"
