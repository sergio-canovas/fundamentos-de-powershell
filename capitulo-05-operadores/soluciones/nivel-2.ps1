# Fundamentos de PowerShell (2ª edición)
# Capítulo 5. Operadores.
# Solución del ejercicio de nivel 2
#
# Enunciado: Tenemos la variable `$archivo = "nomina_2026_marzo.pdf"`. Escribe una
# expresión que responda a cada una de estas preguntas: ¿es un PDF? ¿Su nombre empieza por
# "nomina"? ¿Se cumplen las dos cosas a la vez? ¿Es de 2025 o de 2026?

$archivo = "nomina_2026_marzo.pdf"
$archivo -like "*.pdf"
$archivo -like "nomina*"
($archivo -like "*.pdf") -and ($archivo -like "nomina*")
($archivo -like "*2025*") -or ($archivo -like "*2026*")
