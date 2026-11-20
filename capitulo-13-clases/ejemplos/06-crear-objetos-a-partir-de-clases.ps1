# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Apartado: Crear objetos a partir de clases

# Clases de los ejemplos anteriores, para que este fichero funcione por sí solo.
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

# Ejemplo del libro:
$lista = @(
    "CAT-BLDRQG2"
    "CAT-FNL8Q02"
    "CAT-BB0TQG2"
    "CAT-GYN0Q02"
)

function factoria {
    param($lista)

    # Declaramos colección de objetos
    $coleccion = @()

    # Número de puesto inicial
    $puesto = 1

    foreach ($maquina in $lista) {
        # Obtenemos el sistema operativo
        $so = (Get-CimInstance -ClassName CIM_OperatingSystem -ComputerName $maquina).Caption

        # Añadimos la máquina a la colección
        $coleccion += [Equipo]::new($maquina, $puesto, $so)

        # Sumamos uno al puesto para el siguiente equipo
        $puesto++
    }

    return $coleccion
}

# Llamada a la función
factoria -lista $lista

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# nombre      puesto so
# ------      ------ --
# CAT-BLDRQG2      1 Microsoft Windows 10 Enterprise
# CAT-FNL8Q02      2 Microsoft Windows 10 Enterprise
# CAT-BB0TQG2      3 Microsoft Windows 10 Enterprise
# CAT-GYN0Q02      4 Microsoft Windows 10 Enterprise
