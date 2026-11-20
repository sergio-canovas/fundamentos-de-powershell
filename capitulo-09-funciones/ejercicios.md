# Capítulo 9. Funciones. Ejercicios

**Nivel 1.** Escribe una función `Get-Saludo` que reciba un nombre como parámetro y devuelva el texto "Hola, " seguido del nombre. Guarda el resultado en una variable y muéstralo con `Write-Host`.

**Nivel 2.** Escribe una función `Convert-Temperatura` que reciba una temperatura en grados Celsius y devuelva su equivalente en Fahrenheit (multiplica por 9, divide entre 5 y suma 32). Úsala dentro de un bucle para convertir 0, 25 y 100 grados.

**Nivel 3.** Este script debería contar tres visitas, pero muestra `Visitas: 0`. Explica por qué y corrígelo de dos formas: con `$global:` y con un parámetro y `return`. ¿Cuál te parece más clara?

```powershell
$contador = 0

function Add-Visita {
    $contador++
}

Add-Visita
Add-Visita
Add-Visita
Write-Host "Visitas: $contador"
```
