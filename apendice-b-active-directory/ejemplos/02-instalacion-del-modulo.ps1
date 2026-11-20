# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Instalación del módulo

Get-WindowsCapability -Online | Where-Object Name -like 'Rsat*'
