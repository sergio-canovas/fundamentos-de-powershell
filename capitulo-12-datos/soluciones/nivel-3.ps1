# Fundamentos de PowerShell (2ª edición)
# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs.
# Solución del ejercicio de nivel 3
#
# Enunciado: Usando la API de este capítulo, crea el archivo `festivos2027.csv` con los
# festivos de 2027 de tu comunidad autónoma: los nacionales más los propios. Debe tener
# solo dos columnas, `Fecha` y `Festivo`, y abrirse bien en Excel. Pista: un `foreach` con
# un `if` dentro y un `[PSCustomObject]` por cada festivo que te interese.
# Usa -Encoding utf8BOM, que solo existe en PowerShell 7.

$festivos = Invoke-RestMethod -Uri "https://date.nager.at/api/v3/PublicHolidays/2027/ES"
$comunidad = "ES-VC"

$misFestivos = foreach ($festivo in $festivos) {
    if ($festivo.global -or $festivo.counties -contains $comunidad) {
        [PSCustomObject]@{
            Fecha   = $festivo.date
            Festivo = $festivo.localName
        }
    }
}

$misFestivos | Export-Csv -Path festivos2027.csv -NoTypeInformation -Delimiter ';' -Encoding utf8BOM
Get-Content -Path festivos2027.csv

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# "Fecha";"Festivo"
# "2027-01-01";"Año Nuevo"
# "2027-01-06";"Día de Reyes / Epifanía del Señor"
# "2027-03-26";"Viernes Santo"
# "2027-03-29";"Lunes de Pascua"
# "2027-05-01";"Fiesta del trabajo"
# "2027-06-24";"Sant Joan"
# "2027-08-15";"Asunción"
# "2027-10-09";"Dia de la Comunitat Valenciana"
# "2027-10-12";"Fiesta Nacional de España"
# "2027-11-01";"Día de todos los Santos"
# "2027-12-06";"Día de la Constitución"
# "2027-12-08";"Inmaculada Concepción"
# "2027-12-25";"Navidad"
