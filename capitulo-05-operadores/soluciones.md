# Capítulo 5. Operadores. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.**

```powershell
$total = 500
$usado = 412
$libre = $total - $usado
$porcentajeUsado = $usado / $total * 100
Write-Host "Espacio libre: $libre GB"
Write-Host "Espacio usado: $porcentajeUsado %"
```

```
Espacio libre: 88 GB
Espacio usado: 82.4 %
```

**Nivel 2.** Las cuatro expresiones devuelven `True`.

```powershell
$archivo = "nomina_2026_marzo.pdf"
$archivo -like "*.pdf"
$archivo -like "nomina*"
($archivo -like "*.pdf") -and ($archivo -like "nomina*")
($archivo -like "*2025*") -or ($archivo -like "*2026*")
```

**Nivel 3.**

```
True
False
52
7
True
False
True
```

- `"100" -lt "20"` es `True` porque se comparan textos, carácter a carácter: el "1" va antes que el "2".
- `100 -lt "20"` es `False` porque, con un número a la izquierda, `"20"` se convierte en número.
- `"5" + 2` une textos (`52`) y `2 + "5"` suma números (`7`). Manda el de la izquierda.
- `7 % 2 -eq 1` es `True`: las operaciones aritméticas se resuelven antes que las comparaciones, el resto de dividir 7 entre 2 es 1 y, por tanto, 7 es impar.
- `"PowerShell" -contains "Shell"` es `False`, por lo que vimos en *La IA y tú*: `-contains` es para colecciones.
- `"PowerShell" -like "*shell"` es `True` porque `-like` no distingue mayúsculas de minúsculas.
