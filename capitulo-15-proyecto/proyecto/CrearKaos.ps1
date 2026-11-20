# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Preparando una carpeta de pruebas

$ruta = "C:\Temp\Kaos"
New-Item -Path $ruta -ItemType Directory -Force | Out-Null

$ejemplos = @(
    [PSCustomObject]@{ Nombre = "impresora1.jpg";   Fecha = "2019-06-27" }
    [PSCustomObject]@{ Nombre = "papelera2.jpg";    Fecha = "2019-06-28" }
    [PSCustomObject]@{ Nombre = "personal1.jpg";    Fecha = "2020-01-17" }
    [PSCustomObject]@{ Nombre = "Rack1_v1.JPG";     Fecha = "2020-01-24" }
    [PSCustomObject]@{ Nombre = "presupuesto.xlsx"; Fecha = "2020-03-02" }
    [PSCustomObject]@{ Nombre = "caja_cartón.jpg";  Fecha = "2021-09-08" }
    [PSCustomObject]@{ Nombre = "FCW1932A4RT.jpg";  Fecha = "2021-09-10" }
)

foreach ($ejemplo in $ejemplos) {
    $fichero = New-Item -Path (Join-Path -Path $ruta -ChildPath $ejemplo.Nombre) -ItemType File -Force
    $fichero.LastWriteTime = [datetime]$ejemplo.Fecha
}

Get-ChildItem -Path $ruta

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#     Directory: C:\Temp\Kaos
#
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# -a---          08/09/2021    00:00              0 caja_cartón.jpg
# -a---          10/09/2021    00:00              0 FCW1932A4RT.jpg
# -a---          27/06/2019    00:00              0 impresora1.jpg
# -a---          28/06/2019    00:00              0 papelera2.jpg
# -a---          17/01/2020    00:00              0 personal1.jpg
# -a---          02/03/2020    00:00              0 presupuesto.xlsx
# -a---          24/01/2020    00:00              0 Rack1_v1.JPG
