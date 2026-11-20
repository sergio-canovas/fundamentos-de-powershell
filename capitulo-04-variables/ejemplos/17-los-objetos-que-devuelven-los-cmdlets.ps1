# Fundamentos de PowerShell (2ª edición)
# Capítulo 4. Variables y tipos de datos.
# Apartado: Tipos de datos > Los objetos que devuelven los cmdlets

$directorio = Get-Item -Path "C:\Windows"
$directorio

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Directory: C:\
#
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----          18/11/2026    05:34                Windows
