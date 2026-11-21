# Capítulo 13. Clases. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.**

```powershell
class Usuario {
    [string]$nombre
    [string]$departamento

    Usuario([string]$nombre, [string]$departamento) {
        $this.nombre = $nombre
        $this.departamento = $departamento
    }

    [string] Presentarse() {
        return "Hola, soy $($this.nombre), de $($this.departamento)"
    }
}

$usuario1 = [Usuario]::new("Lucía", "Sistemas")
$usuario2 = [Usuario]::new("Andrés", "Contabilidad")
$usuario1.Presentarse()
$usuario2.Presentarse()
```

```
Hola, soy Lucía, de Sistemas
Hola, soy Andrés, de Contabilidad
```

**Nivel 2.** Con la clase `Vehiculo` del apartado de sobrescritura cargada en el mismo script:

```powershell
class Moto : Vehiculo {
    [int]$cilindrada

    Moto($nombre, $velMax, [int]$cilindrada) : base($nombre, $velMax) {
        $this.cilindrada = $cilindrada
    }

    avanzar() {
        Write-Host "¡Brrrum!"
    }
}

$motoUno = [Moto]::new("Vespa", 90, 125)
$motoUno
```

```
cilindrada nombre velMax
---------- ------ ------
       125 Vespa      90
```

```powershell
$motoUno.avanzar()
$motoUno.retroceder()
```

```
¡Brrrum!
Hacia detrás
```

**Nivel 3.** Con la clase `Equipo` de tres parámetros cargada:

```powershell
$filas = Import-Csv -Path C:\Practicas\Datos\puestos.csv

$almacen = foreach ($fila in $filas) {
    [Equipo]::new($fila.Nombre, $fila.Puesto, $fila.SO)
}

$almacen | Where-Object { $_.so -eq "Windows 10" }
```

```
nombre      puesto so
------      ------ --
CAT-BLDRQG2      1 Windows 10
CAT-BB0TQG2      3 Windows 10
```

En cuanto a la pregunta extra:

```powershell
$filas[0].Puesto.GetType().Name
$almacen[0].puesto.GetType().Name
```

```
String
Int32
```

En el CSV, el puesto es un texto; en nuestros objetos, un número entero. Como el constructor declara `[int]$puesto`, PowerShell convierte "1" en 1 al crear cada equipo. Es una de las ventajas de indicar los tipos en una clase: si en el CSV apareciera un puesto escrito como "uno", el constructor fallaría con un error claro (*No se puede convertir el argumento "puesto", con el valor "uno"...*) en lugar de dejar que ese texto se cuele en tus datos.
