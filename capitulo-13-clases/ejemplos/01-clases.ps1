# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Clases

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
