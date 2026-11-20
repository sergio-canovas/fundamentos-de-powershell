# Fundamentos de PowerShell (2ª edición)
# Capítulo 13. Clases.
# Solución del ejercicio de nivel 1
#
# Enunciado: Crea una clase `Usuario` con las propiedades `nombre` y `departamento`, un
# constructor que reciba ambos valores y un método `Presentarse()` que devuelva el texto
# "Hola, soy (nombre), de (departamento)". Crea dos usuarios y haz que se presenten.

class Usuario {
    [string]$nombre
    [string]$departamento

    Usuario([string]$nombre, [string]$departamento) {
        $this.nombre = $nombre
        $this.departamento = $departamento
    }

    [string] Presentarse() {
        return "Hola, soy $($this.nombre), de $($this.departamento)"
    }
}

$usuario1 = [Usuario]::new("Lucía", "Sistemas")
$usuario2 = [Usuario]::new("Andrés", "Contabilidad")
$usuario1.Presentarse()
$usuario2.Presentarse()

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Hola, soy Lucía, de Sistemas
# Hola, soy Andrés, de Contabilidad
