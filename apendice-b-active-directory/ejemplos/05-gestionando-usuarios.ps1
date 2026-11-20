# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando usuarios

Get-ADUser -Identity sergio.canovas

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# DistinguishedName : CN=Sergio.Canovas,OU=Sistemas,DC=PSMola,DC=com
# Enabled           : True
# GivenName         : Sergio
# Name              : Sergio.Canovas
# ObjectClass       : user
# ObjectGUID        : 3f6c1a2e-8b4d-4c7a-9e21-5d0b7a6c4f18
# SamAccountName    : sergio.canovas
# SID               : S-1-5-21-1668511234-985546218-3448189401-1681
# Surname           : Canovas
# UserPrincipalName : sergio.canovas@psmola.com
