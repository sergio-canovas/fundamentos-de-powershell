# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Parámetros de cmdlets

Test-Connection -ComputerName localhost -Count 2

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    Destination: localhost
#
# Ping Source           Address                   Latency BufferSize Status
#                                                    (ms)        (B)
# ---- ------           -------                   ------- ---------- ------
#    1 PC-PRACTICAS     ::1                             0         32 Success
#    2 PC-PRACTICAS     ::1                             0         32 Success
