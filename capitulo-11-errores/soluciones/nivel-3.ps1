# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Solución del ejercicio de nivel 3
#
# Enunciado: Escribe una función `Get-Cociente` que reciba dos números enteros y devuelva
# el resultado de dividirlos. Si el divisor es 0, en lugar del error rojo debe mostrar "No
# se puede dividir entre cero" usando un `catch` selectivo. Pase lo que pase, al terminar
# debe mostrar "Operación terminada".

function Get-Cociente {
    param([Int]$dividendo, [Int]$divisor)
    try {
        $dividendo / $divisor
    }
    catch [System.DivideByZeroException] {
        Write-Host "No se puede dividir entre cero"
    }
    finally {
        Write-Host "Operación terminada"
    }
}

Get-Cociente -dividendo 10 -divisor 2
Get-Cociente -dividendo 10 -divisor 0

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# 5
# Operación terminada
# No se puede dividir entre cero
# Operación terminada
