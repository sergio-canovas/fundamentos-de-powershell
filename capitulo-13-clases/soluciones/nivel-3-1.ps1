# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Solución del ejercicio de nivel 3
#
# Enunciado: Crea el archivo `puestos.csv` con el código siguiente. Después, usando la
# clase `Equipo` con el constructor de tres parámetros, fabrica un objeto por cada fila
# del CSV, guárdalos en `$almacen` y muestra solo los equipos con Windows 10. Pregunta
# extra: en el capítulo 12 vimos que `Import-Csv` lo devuelve todo como texto. ¿De qué
# tipo es la propiedad `puesto` de tus objetos? ¿Por qué?

# Clases de los ejemplos anteriores, para que este fichero funcione por sí solo.
class Equipo {
    [string]$nombre
    [int]$puesto
    [string]$so

    Equipo([string]$nombre, [int]$puesto, [string]$so) {
        $this.nombre = $nombre
        $this.puesto = $puesto
        $this.so = $so
    }

    apagar() {
        Stop-Computer -ComputerName $this.nombre -Force
    }

    [string] Describir() {
        return "$($this.nombre) (puesto $($this.puesto))"
    }
}

# Ejemplo del libro:
$filas = Import-Csv -Path C:\Practicas\Datos\puestos.csv

$almacen = foreach ($fila in $filas) {
    [Equipo]::new($fila.Nombre, $fila.Puesto, $fila.SO)
}

$almacen | Where-Object { $_.so -eq "Windows 10" }

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# nombre      puesto so
# ------      ------ --
# CAT-BLDRQG2      1 Windows 10
# CAT-BB0TQG2      3 Windows 10
