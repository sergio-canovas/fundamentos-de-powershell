# Capítulo 9. Funciones. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.**

```powershell
function Get-Saludo {
    param([String]$nombre)
    return "Hola, $nombre"
}

$mensaje = Get-Saludo -nombre "Ana"
Write-Host $mensaje
```

```
Hola, Ana
```

**Nivel 2.** Usamos `[Double]` porque el resultado puede tener decimales.

```powershell
function Convert-Temperatura {
    param([Double]$celsius)
    return $celsius * 9 / 5 + 32
}

foreach ($grados in @(0, 25, 100)) {
    $fahrenheit = Convert-Temperatura -celsius $grados
    Write-Host "$grados °C son $fahrenheit °F"
}
```

```
0 °C son 32 °F
25 °C son 77 °F
100 °C son 212 °F
```

**Nivel 3.** Dentro de la función, `$contador++` lee el 0 del ámbito padre, pero al modificarlo crea una variable nueva, propia de la función, que desaparece al terminar. El `$contador` del script nunca cambia.

Con `$global:`:

```powershell
$global:contador = 0

function Add-Visita {
    $global:contador++
}

Add-Visita
Add-Visita
Add-Visita
Write-Host "Visitas: $contador"
```

Con un parámetro y `return`:

```powershell
$contador = 0

function Add-Visita {
    param([Int]$total)
    return $total + 1
}

$contador = Add-Visita -total $contador
$contador = Add-Visita -total $contador
$contador = Add-Visita -total $contador
Write-Host "Visitas: $contador"
```

```
Visitas: 3
```

Las dos funcionan. La segunda es más larga, pero se ve a simple vista qué entra en la función, qué sale y dónde cambia `$contador`. Con `$global:`, para saberlo hay que leer el interior de la función.
