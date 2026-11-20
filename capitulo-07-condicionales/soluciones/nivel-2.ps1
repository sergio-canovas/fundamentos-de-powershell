# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Solución del ejercicio de nivel 2
#
# Enunciado: Usando `switch` y la propiedad `DayOfWeek` de `Get-Date`, escribe un script
# que diga si hoy es laborable o fin de semana.

$dia = (Get-Date).DayOfWeek

switch ($dia) {
    "Saturday" { Write-Host "Hoy es fin de semana" }
    "Sunday"   { Write-Host "Hoy es fin de semana" }
    default    { Write-Host "Hoy es laborable" }
}
