# Capítulo 6. Objetos y pipeline. Ejercicios

**Nivel 1.** Usa `Get-Member` para averiguar qué propiedad de los servicios (`Get-Service`) indica si están en marcha. Después, muestra solo el nombre (`Name`) y el nombre descriptivo (`DisplayName`) de los servicios que se estén ejecutando.

**Nivel 2.** Muestra los archivos de la carpeta C:\Windows (sin entrar en subcarpetas) que ocupen más de 1 MB, ordenados de mayor a menor, con su nombre y su tamaño. Después, averigua cuántos son y cuánto ocupan en total.

**Nivel 3.** Este comando debería mostrar los nombres de los cinco procesos que más CPU han consumido, pero el resultado no está ordenado por CPU: son cinco procesos cualesquiera. Encuentra el fallo y corrígelo.

```powershell
Get-Process |
    Select-Object -Property Name |
    Sort-Object -Property CPU -Descending |
    Select-Object -First 5
```
