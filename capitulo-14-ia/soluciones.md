# Capítulo 14. Programar con IA. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 2.** Hay varios, y ya los conoces todos:

- `AddDays(90)` suma días en lugar de restarlos, así que el límite queda en el futuro y se seleccionan todos los logs. Debería ser `AddDays(-90)`.
- El bucle usa `-le`, de modo que da una vuelta de más y en la última intenta trabajar con un elemento que no existe (capítulo 8).
- `Get-ChildItem` sin `-File` devuelve también carpetas, y `-Recurse -Force` las borraría enteras sin preguntar.
- No hay `-WhatIf` ni gestión de errores. Si un archivo está en uso, el script falla sin que nadie se entere.

Una versión más segura:

```powershell
$limite = (Get-Date).AddDays(-90)

Get-ChildItem -Path "D:\Logs" -File |
    Where-Object { $_.CreationTime -lt $limite } |
    Remove-Item -WhatIf
```

**Nivel 3.** No hay una única solución. Lo importante es el hábito: tratar la explicación de la IA como una afirmación que hay que comprobar, no como una verdad. Si detectas que te ha explicado algo que el código no hace, acabas de encontrar exactamente el tipo de error que este libro te ha enseñado a cazar.
