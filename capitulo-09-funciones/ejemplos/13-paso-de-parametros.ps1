# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Paso de parámetros

#Declaramos función.
function ping {
    param(
        [String]$web
    )
    Test-Connection $web -Count 1
}

#Llamada a funciones.
ping -web "www.google.com"
ping -web "www.linkedin.com"

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    Destination: www.google.com
#
# Ping Source           Address                   Latency BufferSize Status
#                                                    (ms)        (B)
# ---- ------           -------                   ------- ---------- ------
#    1 MI-EQUIPO        142.251.155.119                26         32 Success
#
#    Destination: www.linkedin.com
#
# Ping Source           Address                   Latency BufferSize Status
#                                                    (ms)        (B)
# ---- ------           -------                   ------- ---------- ------
#    1 MI-EQUIPO        104.18.41.41                    9         32 Success
