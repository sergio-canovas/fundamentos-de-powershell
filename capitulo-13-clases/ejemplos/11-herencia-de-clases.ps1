# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Herencia de clases

class Vehiculo {
    $nombre
    $velMax

    # Constructor
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
