# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Descripción: La IA y tú: la clase del foro, corregida con el tipo y el return

class Equipo {
    [string]$nombre
    [int]$puesto

    Equipo([string]$nombre, [int]$puesto) {
        $this.nombre = $nombre
        $this.puesto = $puesto
    }

    [string] Describir() {
        return "Equipo $($this.nombre), puesto $($this.puesto)"
    }
}

$equipo = [Equipo]::new("CAT-BLDRQG2", 1)
$equipo.Describir()

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Equipo CAT-BLDRQG2, puesto 1
