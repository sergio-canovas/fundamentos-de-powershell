# Fundamentos de PowerShell (2ª edición)
# Capítulo 1. Introducción.
# Apartado: La IA y tú

# ¡CUIDADO! Este script borra ficheros o carpetas sin preguntar.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

Remove-Item -Path "$env:TEMP\*" -Recurse -Force
