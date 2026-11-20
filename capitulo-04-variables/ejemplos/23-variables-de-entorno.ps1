# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Variables de entorno

Write-Host "Hola, soy el usuario $env:USERNAME"
Write-Host "Utilizo el sistema operativo $env:OS"
Write-Host "Mi máquina tiene $env:NUMBER_OF_PROCESSORS procesadores"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Hola, soy el usuario alumno
# Utilizo el sistema operativo Windows_NT
# Mi máquina tiene 22 procesadores
