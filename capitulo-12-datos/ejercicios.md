# Capítulo 12. Trabajar con datos: ficheros, CSV, JSON y APIs. Ejercicios

Si no has seguido los ejemplos del capítulo, ejecuta antes este código para crear la carpeta y el archivo de partida:

```powershell
New-Item -Path C:\Practicas\Datos -ItemType Directory -Force |
    Out-Null
Set-Location -Path C:\Practicas\Datos

$equipos = @(
    [PSCustomObject]@{
        Nombre      = "VLC-1234567"
        Puesto      = 8
        SO          = "Windows 10"
        Responsable = "María"
    }
    [PSCustomObject]@{
        Nombre      = "VLC-1234568"
        Puesto      = 9
        SO          = "Windows 11"
        Responsable = "Íñigo"
    }
    [PSCustomObject]@{
        Nombre      = "VLC-1234569"
        Puesto      = 10
        SO          = "Windows 11"
        Responsable = "Begoña"
    }
)
$equipos |
    Export-Csv -Path equipos.csv -NoTypeInformation -Encoding utf8
```

**Nivel 1.** Crea un archivo `registro.txt` cuya primera línea sea "Inicio del script: " seguido de la fecha y la hora actuales. Añade tres líneas más: "Copiando archivos...", "Comprimiendo..." y "Fin del script". Después, muestra solo las dos últimas líneas y cuántas líneas tiene el archivo en total.

**Nivel 2.** Importa `equipos.csv` y muestra los equipos ordenados por número de puesto, de menor a mayor. ¿Salen en el orden correcto? Corrígelo y guarda el resultado en `equipos_ordenados.csv`, listo para abrirse con doble clic en un Excel en español.

**Nivel 3.** Usando la API de este capítulo, crea el archivo `festivos2027.csv` con los festivos de 2027 de tu comunidad autónoma: los nacionales más los propios. Debe tener solo dos columnas, `Fecha` y `Festivo`, y abrirse bien en Excel. Pista: un `foreach` con un `if` dentro y un `[PSCustomObject]` por cada festivo que te interese.
