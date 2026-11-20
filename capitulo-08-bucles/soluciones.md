# Capítulo 8. Bucles. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.**

```powershell
$i = 10

while ($i -ge 1) {
    Write-Host $i
    $i--
}

Write-Host "¡Despegue!"
```

**Nivel 2.** Un Do Until (o Do While), porque necesitamos preguntar al menos una vez antes de poder comprobar la respuesta.

```powershell
do {
    $respuesta = Read-Host "Introduce un número del 1 al 5"
} until ($respuesta -in '1', '2', '3', '4', '5')

Write-Host "Has elegido el $respuesta"
```

**Nivel 3.** Dentro de un `foreach` el elemento actual es `$archivo`, no `$_`. Como `$_` no contiene el archivo, la condición nunca se cumple.

```powershell
$archivos = Get-ChildItem -Path "C:\Temp" -File

foreach ($archivo in $archivos) {
    if ($archivo.Length -gt 1MB) {
        Write-Host $archivo.Name
    }
}
```
