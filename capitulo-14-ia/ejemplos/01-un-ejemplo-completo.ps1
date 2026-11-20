# Fundamentos de PowerShell (2ª edición)
# Capítulo 14. Programar con IA.
# Apartado: Un ejemplo completo

# ¡CUIDADO! Este script borra ficheros o carpetas sin preguntar.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

$limite = (Get-Date).AddDays(30)
Get-ChildItem "$HOME\Downloads" -Recurse | Where-Object { $_.LastWriteTime -lt $limite } | Remove-Item -Force
