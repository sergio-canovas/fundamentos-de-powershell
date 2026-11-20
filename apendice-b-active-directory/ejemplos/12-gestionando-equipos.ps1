# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando equipos

Get-ADComputer -Identity PC-ALMACEN

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# DistinguishedName : CN=PC-ALMACEN,OU=VAL,OU=WS,DC=PSMola,DC=com
# DNSHostName       : PC-ALMACEN.psmola.com
# Enabled           : True
# Name              : PC-ALMACEN
# ObjectClass       : computer
# ObjectGUID        : 8a3d2c41-5e7f-4b19-a0c6-3d7c9e2b1f05
# SamAccountName    : PC-ALMACEN$
# SID               : S-1-5-21-1668511234-985546218-3448189401-2417
# UserPrincipalName :
