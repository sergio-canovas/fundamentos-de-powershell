# Capítulo 7. Estructuras condicionales. Ejercicios

**Nivel 1.** Guarda un número en la variable `$numero` y escribe un script que diga si es par o impar. Pista: el operador `%` del capítulo 5.

**Nivel 2.** Usando `switch` y la propiedad `DayOfWeek` de `Get-Date`, escribe un script que diga si hoy es laborable o fin de semana.

**Nivel 3.** El siguiente script debería mostrar la calificación correspondiente a una nota, pero con un 9,5 dice *Aprobado*. Encuentra el fallo y corrígelo.

```powershell
$nota = 9.5

if ($nota -ge 5) {
    Write-Host "Aprobado"
}
elseif ($nota -ge 7) {
    Write-Host "Notable"
}
elseif ($nota -ge 9) {
    Write-Host "Sobresaliente"
}
else {
    Write-Host "Suspenso"
}
```
