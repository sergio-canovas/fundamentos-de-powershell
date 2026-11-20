# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Crear objetos a partir de clases

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
