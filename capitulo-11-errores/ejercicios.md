# Capítulo 11. Gestionando errores. Ejercicios

**Nivel 1.** Escribe un script que intente leer con `Get-Content` un fichero que no existe, sin que aparezca el error en pantalla, y que después muestre solo el mensaje del error usando `$Error`. ¿Sirve cualquier valor de `-ErrorAction`?

**Nivel 2.** Escribe una función `Show-Fichero` que reciba la ruta de un fichero y muestre su contenido. Si el fichero no existe, debe mostrar "No encuentro el fichero" seguido de la ruta. Cualquier otro error debe mostrarse como "Error inesperado:" seguido del mensaje.

**Nivel 3.** Escribe una función `Get-Cociente` que reciba dos números enteros y devuelva el resultado de dividirlos. Si el divisor es 0, en lugar del error rojo debe mostrar "No se puede dividir entre cero" usando un `catch` selectivo. Pase lo que pase, al terminar debe mostrar "Operación terminada".
