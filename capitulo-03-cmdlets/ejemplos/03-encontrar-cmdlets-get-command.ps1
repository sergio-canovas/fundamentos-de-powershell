# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Encontrar cmdlets: Get-Command

Get-Command -Noun Service

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Get-Service                                        7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          New-Service                                        7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Remove-Service                                     7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Restart-Service                                    7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Resume-Service                                     7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Set-Service                                        7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Start-Service                                      7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Stop-Service                                       7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Suspend-Service                                    7.0.0.0    Microsoft.PowerShell.Management
