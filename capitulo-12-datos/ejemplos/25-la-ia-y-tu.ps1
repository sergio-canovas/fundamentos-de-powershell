# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Apartado: La IA y tú

$inventario = [PSCustomObject]@{
    Sede    = "Valencia"
    Equipos = @(
        [PSCustomObject]@{
            Nombre = "VLC-1234567"
            Discos = @(
                [PSCustomObject]@{ Letra = "C"; TamanoGB = 256 }
                [PSCustomObject]@{ Letra = "D"; TamanoGB = 1000 }
            )
        }
    )
}

$inventario | ConvertTo-Json | Set-Content -Path inventario.json -Encoding utf8

# Al día siguiente...
$recuperado = Get-Content -Path inventario.json -Raw | ConvertFrom-Json
$recuperado.Equipos[0].Discos[0].TamanoGB
