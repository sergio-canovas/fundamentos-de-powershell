# Fundamentos de PowerShell (2ª edición)
# Capítulo 7. Estructuras condicionales.
# Apartado: Switch

switch ($valor) {          # Se evalúa la expresión
    "Valor1" {             # Si la expresión es igual a Valor1, se ejecuta el bloque
        Instrucción 1
    }
    "Valor2" {
        Instrucción 2
    }
    default {              # Si no hay coincidencias, se ejecuta el bloque default
        Instrucción 3
    }
}
