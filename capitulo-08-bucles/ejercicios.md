# Capítulo 8. Bucles. Ejercicios

**Nivel 1.** Escribe un bucle While que muestre los números del 10 al 1 en orden descendente y, al terminar, el mensaje "¡Despegue!".

**Nivel 2.** Escribe un script que pida al usuario un número entre 1 y 5 con `Read-Host` y que lo vuelva a pedir mientras la respuesta no sea válida. ¿Qué tipo de bucle es el más adecuado y por qué?

**Nivel 3.** El siguiente script debería mostrar solo los archivos de más de 1 MB de una carpeta, pero no muestra ninguno. Encuentra el fallo y corrígelo.

```powershell
$archivos = Get-ChildItem -Path "C:\Temp" -File

foreach ($archivo in $archivos) {
    if ($_.Length -gt 1MB) {
        Write-Host $_.Name
    }
}
```
