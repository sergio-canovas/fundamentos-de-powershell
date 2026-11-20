# Capítulo 2. Tu entorno: PowerShell 7 y Visual Studio Code. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 2.**

```powershell
Write-Host "Usuario: $env:USERNAME"
Write-Host "Equipo: $env:COMPUTERNAME"
Write-Host "PowerShell: $($PSVersionTable.PSVersion)"
```

**Nivel 3.** Cada línea es un *ámbito* (*scope*) en el que se puede definir una directiva: desde la política de grupo de la empresa (`MachinePolicy`, `UserPolicy`) hasta la sesión actual (`Process`), tu usuario (`CurrentUser`) o todo el equipo (`LocalMachine`). Si en un ámbito aparece `Undefined`, ese nivel no impone nada. Como cada versión guarda su configuración por separado, es habitual que los resultados no coincidan.
