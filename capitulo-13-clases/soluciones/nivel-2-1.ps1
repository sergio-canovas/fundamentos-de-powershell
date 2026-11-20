# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Solución del ejercicio de nivel 2
#
# Enunciado: La junta de accionistas también quería motos. Crea la clase `Moto`, que
# herede de `Vehiculo`, con una propiedad nueva, `cilindrada`, de tipo entero. Su
# constructor debe usar el de `Vehiculo` con `: base(...)`. Sobrescribe `avanzar()` para
# que muestre "¡Brrrum!". Crea una moto y comprueba que avanza a su manera y retrocede
# como cualquier otro vehículo.

# Clases de los ejemplos anteriores, para que este fichero funcione por sí solo.
class Vehiculo {
    $nombre
    $velMax

    Vehiculo($nombre, $velMax) {
        $this.nombre = $nombre
        $this.velMax = $velMax
    }

    avanzar() {
        Write-Host "¡Hacia adelante!"
    }

    retroceder() {
        Write-Host "Hacia detrás"
    }
}

# Ejemplo del libro:
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

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# cilindrada nombre velMax
# ---------- ------ ------
#        125 Vespa      90
