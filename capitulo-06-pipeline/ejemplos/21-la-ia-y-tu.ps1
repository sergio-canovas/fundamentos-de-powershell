# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: La IA y tú

Get-Process | Format-Table | Get-Member

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    TypeName: Microsoft.PowerShell.Commands.Internal.Format.FormatStartData
# ...
#    TypeName: Microsoft.PowerShell.Commands.Internal.Format.GroupStartData
# ...
#    TypeName: Microsoft.PowerShell.Commands.Internal.Format.FormatEntryData
# ...
