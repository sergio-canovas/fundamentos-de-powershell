# Capítulo 4. Variables y tipos de datos. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.**

```powershell
$nombre = "Ana"
$edad = 20
$terminado = $false

Write-Host "Me llamo $nombre, tengo $edad años. Libro terminado: $terminado"
$nombre.GetType().Name
$edad.GetType().Name
$terminado.GetType().Name
```

```
Me llamo Ana, tengo 20 años. Libro terminado: False
String
Int32
Boolean
```

**Nivel 2.**

```powershell
$ciudades = @("Valencia", "Madrid", "Sevilla", "Bilbao", "Zaragoza")

$ciudades[0]
$ciudades[-1]
$ciudades.Count

$ciudades += "Murcia"
$ciudades.Count
```

```
Valencia
Zaragoza
5
6
```

**Nivel 3.** El script muestra `El archivo C:\Windows\win.ini.Name ocupa C:\Windows\win.ini.Length bytes`. Dentro de las comillas, PowerShell sustituye `$archivo` por la ruta del fichero y deja `.Name` y `.Length` como texto. Hay que usar subexpresiones:

```powershell
$archivo = Get-Item -Path "C:\Windows\win.ini"
Write-Host "El archivo $($archivo.Name) ocupa $($archivo.Length) bytes"
```

```
El archivo win.ini ocupa 92 bytes
```
