# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: La IA y tú

class Equipo {
    [string]$nombre
    [int]$puesto

    Equipo([string]$nombre, [int]$puesto) {
        $this.nombre = $nombre
        $this.puesto = $puesto
    }

    Describir() {
        "Equipo $($this.nombre), puesto $($this.puesto)"
    }
}

$equipo = [Equipo]::new("CAT-BLDRQG2", 1)
$equipo.Describir()
