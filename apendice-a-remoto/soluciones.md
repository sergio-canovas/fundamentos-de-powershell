# Apéndice A. Reinando en tu red: administración remota. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

```powershell
$equipos = @("PC-RECEPCION", "PC-COMPRAS", "PC-ALMACEN")
$servicio = Read-Host -Prompt "Introduce el nombre del servicio"

Invoke-Command -ComputerName $equipos -ScriptBlock {
    Get-Service -Name $using:servicio
} | Select-Object -Property PSComputerName, Name, Status
```

Con el servicio de impresión, `Spooler`, el resultado sería algo así:

```
PSComputerName Name    Status
-------------- ----    ------
PC-RECEPCION   Spooler Running
PC-COMPRAS     Spooler Running
PC-ALMACEN     Spooler Stopped
```

Ya sabes por qué no imprime nadie en el almacén.
