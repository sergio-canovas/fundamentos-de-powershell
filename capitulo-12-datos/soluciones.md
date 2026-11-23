# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.**

```powershell
Set-Content -Path registro.txt -Value "Inicio del script: $(Get-Date)"
Add-Content -Path registro.txt -Value "Copiando archivos..."
Add-Content -Path registro.txt -Value "Comprimiendo..."
Add-Content -Path registro.txt -Value "Fin del script"

Get-Content -Path registro.txt -Tail 2
(Get-Content -Path registro.txt).Count
```

```
Comprimiendo...
Fin del script
4
```

**Nivel 2.** Si ordenamos sin más, el puesto 10 aparece el primero:

```powershell
$importados = Import-Csv -Path equipos.csv
$importados | Sort-Object Puesto
```

```
Nombre      Puesto SO         Responsable
------      ------ --         -----------
VLC-1234569 10     Windows 11 Begoña
VLC-1234567 8      Windows 10 María
VLC-1234568 9      Windows 11 Íñigo
```

Es el mismo problema que vimos con `Where-Object`: `Import-Csv` devuelve texto y `Sort-Object` lo ordena alfabéticamente. En lugar del nombre de una propiedad, `Sort-Object` acepta un bloque entre llaves que calcula el valor por el que ordenar, y ahí podemos convertirlo a número:

```powershell
$importados | Sort-Object { [int]$_.Puesto } |
    Export-Csv -Path equipos_ordenados.csv -NoTypeInformation `
        -Delimiter ';' -Encoding utf8BOM

Get-Content -Path equipos_ordenados.csv
```

```
"Nombre";"Puesto";"SO";"Responsable"
"VLC-1234567";"8";"Windows 10";"María"
"VLC-1234568";"9";"Windows 11";"Íñigo"
"VLC-1234569";"10";"Windows 11";"Begoña"
```

En Windows PowerShell 5.1, cambia `utf8BOM` por `UTF8`.

**Nivel 3.** Este ejemplo usa la Comunitat Valenciana (`ES-VC`). Cambia el código por el de tu comunidad: `ES-AN` para Andalucía, `ES-CT` para Cataluña, `ES-GA` para Galicia, `ES-MD` para Madrid, `ES-PV` para el País Vasco, etc.

```powershell
$festivos = Invoke-RestMethod `
    -Uri "https://date.nager.at/api/v3/PublicHolidays/2027/ES"
$comunidad = "ES-VC"

$misFestivos = foreach ($festivo in $festivos) {
    if ($festivo.global -or $festivo.counties -contains $comunidad) {
        [PSCustomObject]@{
            Fecha   = $festivo.date
            Festivo = $festivo.localName
        }
    }
}

$misFestivos | Export-Csv -Path festivos2027.csv -NoTypeInformation `
    -Delimiter ';' -Encoding utf8BOM
Get-Content -Path festivos2027.csv
```

```
"Fecha";"Festivo"
"2027-01-01";"Año Nuevo"
"2027-01-06";"Día de Reyes / Epifanía del Señor"
"2027-03-26";"Viernes Santo"
"2027-03-29";"Lunes de Pascua"
"2027-05-01";"Fiesta del trabajo"
"2027-06-24";"Sant Joan"
"2027-08-15";"Asunción"
"2027-10-09";"Dia de la Comunitat Valenciana"
"2027-10-12";"Fiesta Nacional de España"
"2027-11-01";"Día de todos los Santos"
"2027-12-06";"Día de la Constitución"
"2027-12-08";"Inmaculada Concepción"
"2027-12-25";"Navidad"
```

Los festivos nacionales tienen `counties` vacío; en ese caso, `-contains` devuelve `False` sin dar error, y basta con que `global` sea `True` para que entren en la lista. Como en el nivel anterior, en Windows PowerShell 5.1 usa `-Encoding UTF8`.
