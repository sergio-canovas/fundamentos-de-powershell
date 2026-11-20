# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Pedir ayuda: Get-Help > Get-Member

Get-Date | Get-Member -MemberType Property

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    TypeName: System.DateTime
#
# Name        MemberType Definition
# ----        ---------- ----------
# Date        Property   datetime Date {get;}
# Day         Property   int Day {get;}
# DayOfWeek   Property   System.DayOfWeek DayOfWeek {get;}
# DayOfYear   Property   int DayOfYear {get;}
# Hour        Property   int Hour {get;}
# ...
# Month       Property   int Month {get;}
# ...
# Year        Property   int Year {get;}
