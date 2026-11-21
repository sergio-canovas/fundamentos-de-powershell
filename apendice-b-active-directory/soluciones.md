# Apéndice B. Gestionando Active Directory. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

```powershell
$deshabilitados = @(Get-ADUser -Filter "Enabled -eq 'False'" -SearchBase "OU=Sistemas,DC=PSMola,DC=com")

$deshabilitados | Select-Object -Property SamAccountName, Name
"Cuentas deshabilitadas: $($deshabilitados.Count)"
```

Como en la sección anterior, `@()` nos garantiza un array, así que el recuento es correcto tanto si no hay ninguna cuenta como si hay solo una.
