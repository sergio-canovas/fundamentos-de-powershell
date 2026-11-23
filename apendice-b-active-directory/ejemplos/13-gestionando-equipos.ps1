# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando equipos

Get-ADComputer -Filter `
    "OperatingSystem -like 'Windows*' -and Enabled -eq 'False'"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# DistinguishedName : CN=PC-ANTIGUO01,OU=VAL,OU=WS,DC=PSMola,DC=com
# DNSHostName       : PC-ANTIGUO01.psmola.com
# Enabled           : False
# Name              : PC-ANTIGUO01
# ObjectClass       : computer
# ObjectGUID        : c5e1b7a9-2d43-4f6e-8b0a-71f9d2c3e486
# SamAccountName    : PC-ANTIGUO01$
# SID               : S-1-5-21-1668511234-985546218-3448189401-2398
# UserPrincipalName :
