# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Herencia de clases

# Clases de los ejemplos anteriores, para que este fichero funcione por sí solo.
class Vehiculo {
    $nombre
    $velMax

    Vehiculo() {
    }

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

class Coche : Vehiculo {
    $numPuertas

    Coche($nombre, $velMax, $numPuertas) {
        $this.nombre = $nombre
        $this.velMax = $velMax
        $this.numPuertas = $numPuertas
    }
}

# Ejemplo del libro:
$cocheUno = [Coche]::new("Ferrari", 220, 5)
$cocheUno

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# numPuertas nombre  velMax
# ---------- ------  ------
#          5 Ferrari    220
