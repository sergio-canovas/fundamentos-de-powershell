# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Sobrescritura de métodos

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

class Coche : Vehiculo {
    $numPuertas

    Coche($nombre, $velMax, $numPuertas) : base($nombre, $velMax) {
        $this.numPuertas = $numPuertas
    }

    # Sobrescribimos el método avanzar()
    avanzar() {
        Write-Host "¡Marchamos!"
    }
}

$transporte = [Vehiculo]::new("Patinete", 25)
$cocheUno = [Coche]::new("Ferrari", 220, 5)

$transporte.avanzar()
$cocheUno.avanzar()
$cocheUno.retroceder()

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# ¡Hacia adelante!
# ¡Marchamos!
# Hacia detrás
