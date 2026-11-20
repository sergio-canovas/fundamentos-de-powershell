# Capítulo 2. Tu entorno: PowerShell 7 y Visual Studio Code. Ejercicios

**Nivel 1.** Instala PowerShell 7 y VS Code con la extensión de PowerShell. Comprueba con `$PSVersionTable.PSVersion` qué versión usa el terminal de VS Code y cámbiala desde la barra de estado.

**Nivel 2.** Crea un script llamado `Info.ps1` que muestre tu nombre de usuario, el nombre del equipo y la versión de PowerShell. Pista: las variables de entorno `$env:USERNAME` y `$env:COMPUTERNAME` te serán útiles.

**Nivel 3.** Ejecuta `Get-ExecutionPolicy -List` en Windows PowerShell 5.1 y en PowerShell 7. ¿Coinciden los resultados? Explica con tus palabras qué significa cada línea. Si no lo sabes, busca la ayuda con `Get-Help about_Execution_Policies`.
