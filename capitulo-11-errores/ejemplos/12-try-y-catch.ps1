# Fundamentos de PowerShell (2ª edición)
# Capítulo 11. Gestionando errores.
# Apartado: Try y catch

try {
    #Con -ErrorAction Stop provocamos al catch
    Get-ChildItem -Path "C:\Temp\directorio_inventado\" -ErrorAction Stop
}
catch {
    #Si hay error, se creará el directorio
    New-Item -Path "C:\Temp" -Name "directorio_inventado" -ItemType Directory
}

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Directory: C:\Temp
#
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----          20/11/2026    13:09                directorio_inventado
