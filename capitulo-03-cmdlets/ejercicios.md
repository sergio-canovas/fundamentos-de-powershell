# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos. Ejercicios

**Nivel 1.** Usa `Get-Command` para obtener todos los cmdlets cuyo sustantivo sea `Process`. ¿Cuál usarías para arrancar un programa? Después, averigua con `Get-Alias` qué cmdlets se esconden detrás de `cd`, `cls` y `cat`.

**Nivel 2.** Consultando la sintaxis o la ayuda de `Get-ChildItem`, averigua qué parámetro muestra solo archivos (sin carpetas) y cuál entra en las subcarpetas. Con ellos, escribe un comando que muestre todos los ficheros `.txt` de `C:\Practicas`, incluidos los de sus subcarpetas.

**Nivel 3.** Sin instalarlo, investiga el módulo `ImportExcel` de la PowerShell Gallery: quién es su autor, qué versión es la última, cuál es la página del proyecto y cuántas veces se ha descargado. ¿Te parece de fiar? Pista: `Find-Module` devuelve un objeto, y puedes ver sus propiedades con `Format-List`.
