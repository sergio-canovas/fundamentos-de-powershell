# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Herencia de clases

# Clases de los ejemplos anteriores, para que este fichero funcione por sí solo.
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

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# MethodException: C:\Practicas\clases_herencia.ps1:23
# Line |
#   23 |      Coche($nombre, $velMax, $numPuertas) {
#      |                                           ~
#      | No se encuentra una sobrecarga para "new" y el recuento de argumentos: "0".
