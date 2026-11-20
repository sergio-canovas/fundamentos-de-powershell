# Capítulo 7. Estructuras condicionales. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.** Si el resto de dividir entre 2 es 0, el número es par.

```powershell
$numero = 7

if ($numero % 2 -eq 0) {
    Write-Host "$numero es par"
}
else {
    Write-Host "$numero es impar"
}
```

**Nivel 2.** Ten en cuenta que `DayOfWeek` devuelve el nombre del día en inglés, sea cual sea el idioma de tu Windows.

```powershell
$dia = (Get-Date).DayOfWeek

switch ($dia) {
    "Saturday" { Write-Host "Hoy es fin de semana" }
    "Sunday"   { Write-Host "Hoy es fin de semana" }
    default    { Write-Host "Hoy es laborable" }
}
```

También podrías resolverlo con un `if` y el operador `-in`: `if ($dia -in "Saturday", "Sunday")`.

**Nivel 3.** Un 9,5 cumple la primera condición (`-ge 5`), así que el script escribe *Aprobado* y se salta todas las demás. Las condiciones deben ir de la más restrictiva a la más general:

```powershell
$nota = 9.5

if ($nota -ge 9) {
    Write-Host "Sobresaliente"
}
elseif ($nota -ge 7) {
    Write-Host "Notable"
}
elseif ($nota -ge 5) {
    Write-Host "Aprobado"
}
else {
    Write-Host "Suspenso"
}
```
