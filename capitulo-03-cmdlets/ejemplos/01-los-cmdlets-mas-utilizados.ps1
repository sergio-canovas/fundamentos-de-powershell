# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Los cmdlets más utilizados

New-Item -Path "C:\" -Name "Practicas" -ItemType Directory
Set-Location -Path "C:\Practicas"
New-Item -Path "C:\Practicas" -Name "hola.txt"
New-Item -Path "C:\Practicas" -Name "Copias" -ItemType Directory
Copy-Item -Path "C:\Practicas\hola.txt" -Destination "C:\Practicas\Copias\"
Move-Item -Path "C:\Practicas\hola.txt" -Destination "C:\Practicas\Copias\adios.txt"
Get-ChildItem -Path "C:\Practicas\Copias"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Directory: C:\Practicas\Copias
#
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# -a---          20/11/2026    13:09              0 adios.txt
# -a---          20/11/2026    13:09              0 hola.txt
