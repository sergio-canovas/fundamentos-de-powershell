# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: Switch

$valor = "Valor 2"

switch ($valor) {
    "Valor 1" {
        Write-Host "es 1"
    }
    "Valor 2" {
        Write-Host "es 2"
    }
    default {
        Write-Host "Ni uno ni otro"
    }
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# es 2
