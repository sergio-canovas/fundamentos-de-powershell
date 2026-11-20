# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Solución del ejercicio de nivel 1
#
# Enunciado: Guarda un número en la variable `$numero` y escribe un script que diga si es
# par o impar. Pista: el operador `%` del capítulo 5.

$numero = 7

if ($numero % 2 -eq 0) {
    Write-Host "$numero es par"
}
else {
    Write-Host "$numero es impar"
}
