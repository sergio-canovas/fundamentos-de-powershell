# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: La IA y tú

# 1. Buscamos solo donde deben estar y solo los que empiezan por bec
#    @() asegura que tenemos un array, aunque solo haya un becario
$becarios = @(Get-ADUser -Filter "SamAccountName -like 'bec*'" `
    -SearchBase "OU=Becarios,DC=PSMola,DC=com")

# 2. Contamos y revisamos la lista
$becarios.Count
$becarios | Select-Object -Property SamAccountName, Name

# 3. Simulamos y, si todo cuadra, repetimos sin -WhatIf
$becarios | Disable-ADAccount -WhatIf
