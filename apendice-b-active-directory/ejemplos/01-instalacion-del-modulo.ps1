# Fundamentos de PowerShell (2ª edición)
# Apéndice B. Gestionando Active Directory.
# Apartado: Instalación del módulo

# Windows 10/11 (ediciones Pro, Enterprise o Education)
Add-WindowsCapability -Online `
    -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
