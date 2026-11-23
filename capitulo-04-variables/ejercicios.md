# Capítulo 4. Variables y tipos de datos. Ejercicios

**Nivel 1.** Crea tres variables con tu nombre, tu edad y si has terminado este libro (`$true` o `$false`). Muestra una frase que las use todas y, después, el tipo de cada una con `.GetType().Name`.

**Nivel 2.** Crea un array con cinco ciudades. Muestra la primera, la última y cuántas hay. Añade una ciudad más y vuelve a contarlas.

**Nivel 3.** Este script debería mostrar el nombre y el tamaño de un fichero, pero el resultado es extraño. Ejecútalo, explica qué ocurre y corrígelo.

```powershell
$archivo = Get-Item -Path "C:\Windows\win.ini"
Write-Host "El archivo $archivo.Name ocupa $archivo.Length bytes"
```
