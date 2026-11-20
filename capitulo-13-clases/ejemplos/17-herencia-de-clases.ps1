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

# Ejemplo del libro:
class Coche : Vehiculo {
    $numPuertas

    Coche($nombre, $velMax, $numPuertas) : base($nombre, $velMax) {
        $this.numPuertas = $numPuertas
    }
}
