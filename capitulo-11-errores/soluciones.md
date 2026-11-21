# Capítulo 11. Gestionando errores. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.** No sirve cualquiera: con `Ignore` el error no se guardaría en `$Error`. Necesitamos `SilentlyContinue`.

```powershell
Get-Content -Path C:\Temp\no_existe.txt -ErrorAction SilentlyContinue
Write-Host "Último error: $($Error[0].Exception.Message)"
```

```
Último error: No se encuentra la ruta de acceso 'C:\Temp\no_existe.txt' porque no existe.
```

**Nivel 2.**

```powershell
function Show-Fichero {
    param([String]$ruta)
    try {
        Get-Content -Path $ruta -ErrorAction Stop
    }
    catch [System.Management.Automation.ItemNotFoundException] {
        Write-Host "No encuentro el fichero $ruta"
    }
    catch {
        Write-Host "Error inesperado: $($_.Exception.Message)"
    }
}

Show-Fichero -ruta "C:\Temp\no_existe.txt"
```

```
No encuentro el fichero C:\Temp\no_existe.txt
```

Con la ruta de un fichero que exista, la función mostrará su contenido.

**Nivel 3.** Si provocas el error y consultas su tipo con `$Error[0].Exception.GetType().FullName`, obtendrás `System.Management.Automation.RuntimeException`, un tipo genérico que PowerShell usa para envolver muchos errores distintos. El error original está dentro: `$Error[0].Exception.InnerException.GetType().FullName` devuelve `System.DivideByZeroException`. El `catch` de PowerShell también mira dentro, así que podemos usar este tipo, mucho más preciso:

```powershell
function Get-Cociente {
    param([Int]$dividendo, [Int]$divisor)
    try {
        $dividendo / $divisor
    }
    catch [System.DivideByZeroException] {
        Write-Host "No se puede dividir entre cero"
    }
    finally {
        Write-Host "Operación terminada"
    }
}

Get-Cociente -dividendo 10 -divisor 2
Get-Cociente -dividendo 10 -divisor 0
```

```
5
Operación terminada
No se puede dividir entre cero
Operación terminada
```

Una curiosidad: si declaras los parámetros como `[Double]`, no hay error que atrapar. La división de 10 entre 0 con decimales da como resultado infinito (`∞`).
