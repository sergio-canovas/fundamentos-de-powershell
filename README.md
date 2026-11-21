# Fundamentos de PowerShell (2ª edición)

Código del libro *Fundamentos de PowerShell. Bases para la automatización de tareas*, segunda edición, de Sergio Cánovas Cardona.

<!-- [PARA EL AUTOR] Añadir aquí el enlace a Amazon cuando la 2ª edición esté publicada. -->

Aquí tienes todos los ejemplos, ejercicios y soluciones del libro, para que no tengas que copiarlos a mano. Eso sí, te recomiendo escribir tú mismo los primeros. Los dedos también aprenden, y equivocarse con una comilla es parte del proceso.

## Cómo descargarlo

Si no usas git, pulsa el botón verde **Code** y después **Download ZIP**. Descomprímelo en una carpeta de prácticas, por ejemplo `C:\Practicas`.

Si ya usas git:

```powershell
git clone https://github.com/sergio-canovas/fundamentos-de-powershell.git
```

## Antes de ejecutar nada

**Permite la ejecución de scripts.** Como vimos en el capítulo 2, Windows PowerShell 5.1 no deja ejecutar scripts hasta que se lo indicas (PowerShell 7 ya viene configurado con `RemoteSigned`). Desde la consola, sin necesidad de abrirla como administrador:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Si te has descargado el ZIP, desbloquea los ficheros.** Windows marca todo lo que llega de Internet y, con `RemoteSigned`, se negará a ejecutar estos scripts porque no están firmados. Desde la carpeta donde los hayas descomprimido:

```powershell
Get-ChildItem -Path . -Recurse | Unblock-File
```

Hazlo solo con ficheros que conozcas, como estos. Si los has descargado con `git clone`, no hace falta.

## Cómo está organizado

Hay una carpeta por capítulo, y cada una tiene un `README.md` con la lista de ficheros y el apartado del libro donde aparece cada uno.

| Carpeta | Contenido |
|---|---|
| `ejemplos/` | Los ejemplos del capítulo, numerados en el orden en que aparecen. El nombre del fichero es el del apartado. |
| `ejercicios.md` | Los enunciados de los ejercicios. |
| `ejercicios/` | El código que acompaña a algunos enunciados, como los scripts con fallos que tienes que encontrar. |
| `soluciones.md` | Las soluciones explicadas. |
| `soluciones/` | El código de las soluciones. |

Hay dos capítulos con estructura propia:

- **Capítulo 10.** Las librerías y los módulos están en una subcarpeta `librerias`, igual que en el libro, para que `$PSScriptRoot` los encuentre.
- **Capítulo 15.** El proyecto final está en `proyecto/`: la primera versión, la versión final y la que mueve en lugar de copiar, ya revisada. En el libro algunas soluciones solo muestran las líneas que cambian. Aquí tienes los ficheros completos, listos para ejecutar.

Las dos primeras líneas de cada script te dicen de qué capítulo y apartado sale. Si el libro muestra el resultado, lo encontrarás al final del fichero como comentario, para que puedas compararlo con el tuyo. Ten en cuenta que nombres de equipo, fechas y procesos cambiarán en tu máquina.

## Cómo usarlos

Abre la carpeta en Visual Studio Code con la extensión de PowerShell, como explica el capítulo 2:

- **F5** ejecuta el script completo.
- **F8** ejecuta solo las líneas seleccionadas.

Muchos ejemplos se apoyan en los anteriores: usan una variable, una función o un fichero que se creó un poco antes. Ejecútalos en orden y en el mismo terminal, igual que si estuvieras siguiendo el libro. En el capítulo 13 he añadido delante de cada ejemplo las clases que necesita, para que funcione por sí solo.

El código de los capítulos se ha probado en PowerShell 7 y en Windows PowerShell 5.1. Cuando algo solo funciona en PowerShell 7, lo indica una línea al principio del fichero.

Algunos ejemplos crean carpetas y ficheros de prueba en `C:\Practicas` y en `C:\Temp`. Cuando termines, puedes borrarlas sin miedo.

## Scripts con freno

Unos pocos scripts borran ficheros, apagan el equipo o hacen cambios en Active Directory. La mayoría son los ejemplos de las secciones *La IA y tú*, donde el código tiene un fallo a propósito para que aprendas a detectarlo. Todos empiezan con un aviso y una línea como esta:

```powershell
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."
```

Mientras esa línea esté ahí, el script se detiene antes de hacer nada. Léelo, entiende qué hace y pruébalo siempre en una carpeta o un equipo de pruebas, nunca con tus datos ni en la red de tu empresa. Y antes de quitar el freno, prueba con `-WhatIf`.

Los apéndices necesitan algo más que tu equipo: el A, otros equipos a los que conectarte; el B, un dominio de Active Directory. Si no tienes un laboratorio, puedes montar uno con máquinas virtuales.

## ¿Has encontrado un error?

Abre una incidencia en la pestaña **Issues** de este repositorio, indicando el capítulo, el fichero y la versión de PowerShell que usas. En la primera edición se me escapó algún despiste, y seguro que en esta también.

## Licencia

El código está bajo licencia MIT: puedes usarlo, modificarlo y compartirlo, también en tu trabajo. Los textos de `ejercicios.md` y `soluciones.md` son parte del libro. Puedes usarlos para estudiar, pero no publicarlos por tu cuenta.
