# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: Catch selectivo

Get-ChildItem -Path C:\CarpetaInventada
$Error[0].Exception.GetType().FullName

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Get-ChildItem: C:\Practicas\depuracion.ps1:1
# Line |
#    1 |  Get-ChildItem -Path C:\CarpetaInventada
#      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#      | Cannot find path 'C:\CarpetaInventada' because it does not exist.
# System.Management.Automation.ItemNotFoundException
