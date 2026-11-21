# Capítulo 15. Proyecto final: organizando nuestros ficheros por años. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.** Añadimos el parámetro y lo usamos en `Get-ChildItem`. En Windows, `-Filter *.jpg` encuentra también las `.JPG`.

```powershell
param (
    [Parameter(Mandatory)]
    [string]$Ruta,

    [string]$Registro = "$PSScriptRoot\registro.csv",

    [string]$Filtro = "*"
)

# ...

$listado = Get-ChildItem -Path $Ruta -File -Filter $Filtro
```

```powershell
.\Organizar.ps1 -Ruta C:\Temp\Kaos -Filtro *.jpg -WhatIf
```

```
What If: Realizando la operación "Copiar a C:\Temp\Kaos\2021" en el objetivo "C:\Temp\Kaos\caja_cartón.jpg".
What If: Realizando la operación "Copiar a C:\Temp\Kaos\2021" en el objetivo "C:\Temp\Kaos\FCW1932A4RT.jpg".
What If: Realizando la operación "Copiar a C:\Temp\Kaos\2019" en el objetivo "C:\Temp\Kaos\impresora1.jpg".
What If: Realizando la operación "Copiar a C:\Temp\Kaos\2019" en el objetivo "C:\Temp\Kaos\papelera2.jpg".
What If: Realizando la operación "Copiar a C:\Temp\Kaos\2020" en el objetivo "C:\Temp\Kaos\personal1.jpg".
What If: Realizando la operación "Copiar a C:\Temp\Kaos\2020" en el objetivo "C:\Temp\Kaos\Rack1_v1.JPG".
```

**Nivel 2.** En `filtrador.ps1` añadimos el parámetro `$Mes` y lo usamos al construir el destino:

```powershell
    param (
        [int]$Anio,
        [string]$Mes,
        [string]$Ruta,
        [string]$Nombre
    )

    $rutaOrigen  = Join-Path -Path $Ruta -ChildPath $Nombre
    $rutaDestino = Join-Path -Path $Ruta -ChildPath "$Anio\$Mes"
```

Y en `Organizar.ps1` se lo pasamos:

```powershell
$resultados = foreach ($fichero in $listado) {
    $mes = $fichero.LastWriteTime.ToString("MM")
    filtrador -Anio $fichero.LastWriteTime.Year -Mes $mes -Ruta $Ruta -Nombre $fichero.Name
}
```

```powershell
Get-ChildItem -Path C:\Temp\Kaos -Recurse -Directory -Name
```

```
2019
2020
2021
2019\06
2020\01
2020\03
2021\09
```

**Nivel 3.**

```powershell
param (
    [string]$Registro = "$PSScriptRoot\registro.csv"
)

$filas = Import-Csv -Path $Registro

"Copiados por carpeta:"
$filas | Where-Object Resultado -eq "Copiado" |
    Group-Object -Property Destino |
    Select-Object -Property Name, Count

$errores = $filas | Where-Object Resultado -like "Error*"
"Errores: $(@($errores).Count)"
```

```
Copiados por carpeta:

Name              Count
----              -----
C:\Temp\Kaos\2019     2
C:\Temp\Kaos\2020     2
C:\Temp\Kaos\2021     2

Errores: 1
```

Un aviso que descubrí al probarlo: no llames `$registro` a la variable de los datos. PowerShell no distingue mayúsculas de minúsculas, así que sería la misma variable que el parámetro `$Registro`, que es de tipo `[string]`, y las filas del CSV se convertirían en un único texto. `@($errores).Count` garantiza que el recuento funcione aunque solo haya un error. En Windows PowerShell 5.1 las carpetas pueden salir en otro orden.
