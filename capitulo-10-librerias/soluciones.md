# Capítulo 10. Librerías y módulos. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.** Añadimos a `funciones_matematicas.ps1`:

```powershell
function potencia {
    param([Double]$base, [Double]$exponente)
    [math]::Pow($base, $exponente)
}
```

Y en el script:

```powershell
. "$PSScriptRoot\librerias\funciones_matematicas.ps1"

restar -numero1 1000 -numero2 1
potencia -base 2 -exponente 10
```

```
999
1024
```

**Nivel 2.** Copiamos la librería como `FuncionesMatematicas.psm1` en la misma carpeta y la importamos. Usamos `-Force` para que, si ya la habíamos importado antes, lea la versión con `potencia`.

```powershell
Import-Module "$PSScriptRoot\librerias\FuncionesMatematicas.psm1" -Force

Get-Command -Module FuncionesMatematicas
potencia -base 2 -exponente 10
```

```
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        dividir                                            0.0        FuncionesMatematicas
Function        multiplicar                                        0.0        FuncionesMatematicas
Function        potencia                                           0.0        FuncionesMatematicas
Function        restar                                             0.0        FuncionesMatematicas
Function        sumar                                              0.0        FuncionesMatematicas
1024
```

**Nivel 3.** Le falta el punto delante de la ruta:

```powershell
. "$PSScriptRoot\librerias\funciones_matematicas.ps1"
```

Sin el punto, esa línea no es una orden, sino un simple texto. Y como vimos en el capítulo 9, todo lo que nadie recoge acaba en pantalla: PowerShell muestra la ruta, no carga nada, y `sumar` no existe cuando llegamos a llamarla.
