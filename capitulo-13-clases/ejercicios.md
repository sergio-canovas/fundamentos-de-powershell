# Capítulo 13. Clases. Ejercicios

**Nivel 1.** Crea una clase `Usuario` con las propiedades `nombre` y `departamento`, un constructor que reciba ambos valores y un método `Presentarse()` que devuelva el texto "Hola, soy (nombre), de (departamento)". Crea dos usuarios y haz que se presenten.

**Nivel 2.** La junta de accionistas también quería motos. Crea la clase `Moto`, que herede de `Vehiculo`, con una propiedad nueva, `cilindrada`, de tipo entero. Su constructor debe usar el de `Vehiculo` con `: base(...)`. Sobrescribe `avanzar()` para que muestre "¡Brrrum!". Crea una moto y comprueba que avanza a su manera y retrocede como cualquier otro vehículo.

**Nivel 3.** Crea el archivo `puestos.csv` con el código siguiente. Después, usando la clase `Equipo` con el constructor de tres parámetros, fabrica un objeto por cada fila del CSV, guárdalos en `$almacen` y muestra solo los equipos con Windows 10. Pregunta extra: en el capítulo 12 vimos que `Import-Csv` lo devuelve todo como texto. ¿De qué tipo es la propiedad `puesto` de tus objetos? ¿Por qué?

```powershell
New-Item -Path C:\Practicas\Datos -ItemType Directory -Force | Out-Null

Set-Content -Path C:\Practicas\Datos\puestos.csv -Value @(
    "Nombre,Puesto,SO"
    "CAT-BLDRQG2,1,Windows 10"
    "CAT-FNL8Q02,2,Windows 11"
    "CAT-BB0TQG2,3,Windows 10"
    "CAT-GYN0Q02,4,Windows 11"
)
```
