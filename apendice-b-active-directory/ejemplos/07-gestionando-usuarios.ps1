# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Gestionando usuarios

Get-ADUser -Filter "Office -like '*madrid*' -and GivenName -like '*Jose*'" |
    Select-Object -Property GivenName, Surname

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# GivenName   Surname
# ---------   -------
# Jose Manuel Ortega
# Jose        Navarro
# Jose        Pastor
# Jose Luis   Ferrer
# Jose        Molina
