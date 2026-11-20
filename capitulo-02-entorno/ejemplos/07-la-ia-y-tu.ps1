# Fundamentos de PowerShell (2ª edición)
# Capítulo 2. Tu entorno: PowerShell 7 y Visual Studio Code.
# Apartado: La IA y tú
# Este ejemplo solo funciona en PowerShell 7.

$mensaje = (Get-Date).Hour -lt 14 ? "Buenos días" : "Buenas tardes"
