# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando equipos

Get-ADComputer -Identity PC-ANTIGUO01 |
    Select-Object -Property Name, Enabled

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Name         Enabled
# ----         -------
# PC-ANTIGUO01    True
