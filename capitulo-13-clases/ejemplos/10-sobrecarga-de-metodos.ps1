# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Sobrecarga de métodos

class Vehiculo {
    # Método sin parámetros
    avanzar() {
        Write-Host "¡Hacia adelante!"
    }

    # Método con un parámetro int
    avanzar([int]$parametro) {
        Write-Host "Hacia adelante a $parametro km/h"
    }

    # Método con un parámetro string
    avanzar([string]$parametro) {
        Write-Host "Vamos a $parametro por hora"
    }
}

$coche = New-Object -TypeName Vehiculo
$coche.avanzar()
$coche.avanzar(45)
$coche.avanzar("cuarenta y cinco")

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# ¡Hacia adelante!
# Hacia adelante a 45 km/h
# Vamos a cuarenta y cinco por hora
