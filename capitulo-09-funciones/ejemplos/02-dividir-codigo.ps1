# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Dividir código

function ping {
    Test-Connection -ComputerName www.google.com
}
#Llamada a la función ping
ping

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    Destination: www.google.com
#
# Ping Source           Address                   Latency BufferSize Status
#                                                    (ms)        (B)
# ---- ------           -------                   ------- ---------- ------
#    1 MI-EQUIPO        142.251.155.119                26         32 Success
#    2 MI-EQUIPO        142.251.155.119                25         32 Success
#    3 MI-EQUIPO        142.251.155.119                25         32 Success
#    4 MI-EQUIPO        142.251.155.119                26         32 Success
