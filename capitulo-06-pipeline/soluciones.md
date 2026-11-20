# Capítulo 6. Objetos y pipeline. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.** Primero inspeccionamos los servicios:

```powershell
Get-Service | Get-Member -MemberType Property
```

La propiedad que buscamos es `Status`, que vale `Running` cuando el servicio está en marcha y `Stopped` cuando está detenido. Con ella ya podemos filtrar:

```powershell
Get-Service |
    Where-Object { $_.Status -eq "Running" } |
    Select-Object -Property Name, DisplayName
```

**Nivel 2.** La lista ordenada:

```powershell
Get-ChildItem -Path C:\Windows -File |
    Where-Object { $_.Length -gt 1MB } |
    Sort-Object -Property Length -Descending |
    Select-Object -Property Name, Length
```

Y, para contarlos y sumar su tamaño, cambiamos los dos últimos pasos por `Measure-Object`:

```powershell
Get-ChildItem -Path C:\Windows -File |
    Where-Object { $_.Length -gt 1MB } |
    Measure-Object -Property Length -Sum
```

Si ejecutas los dos bloques a la vez como un único script, PowerShell intentará encajar el resultado del segundo en la tabla del primero y verás algo extraño. Ejecútalos por separado (selecciónalos y pulsa F8).

**Nivel 3.** El primer `Select-Object` se queda solo con la propiedad `Name`. Cuando los objetos llegan a `Sort-Object`, ya no tienen la propiedad `CPU`, así que no hay nada por lo que ordenar. PowerShell no da ningún error: simplemente los deja en un orden que no significa nada. Hay que ordenar primero y seleccionar después:

```powershell
Get-Process |
    Sort-Object -Property CPU -Descending |
    Select-Object -Property Name -First 5
```
