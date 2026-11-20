# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Crear objetos a partir de clases

# Clases de los ejemplos anteriores, para que este fichero funcione por sí solo.
class Equipo {
    [string]$nombre
    [int]$puesto
    [string]$so

    # Definimos el constructor
    Equipo([string]$nombre, [int]$puesto) {
        $this.nombre = $nombre
        $this.puesto = $puesto
    }

    # Definimos el método apagar
    apagar() {
        Stop-Computer -ComputerName $this.nombre -Force
    }
}

# Ejemplo del libro:
[Equipo]::new("MiPrimerPC", 1)

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# nombre     puesto so
# ------     ------ --
# MiPrimerPC      1
