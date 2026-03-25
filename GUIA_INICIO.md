# Guía de Inicio para PowerShell

Esta guía está diseñada para principiantes que desean comenzar a usar PowerShell. Incluye conceptos básicos y ejemplos prácticos.

## Introducción
PowerShell es un potente lenguaje de scripting y shell de línea de comandos utilizado para la automatización de tareas y administración de sistemas.

### Requisitos Previos
No se requieren conocimientos previos, pero tener algunas nociones sobre el uso de la terminal puede ser útil.

---

### Ejemplos Prácticos
1. **Ejecutando un comando simple**:
   - Abre PowerShell y escribe `Get-Process` para ver todos los procesos en ejecución.
2. **Creando un script**:
   - Escribe `Write-Host 'Hola, PowerShell!'` en un archivo `.ps1` y ejecútalo.


---

## Conceptos Básicos Vistos

### 1. Variables en PowerShell
Las variables almacenan información y se declaran con `$` al inicio. Ejemplo:

```powershell
$nombre = "María"
$edad = 25
Write-Host "Mi nombre es $nombre y tengo $edad años"
```

### 2. Tipos de Datos
PowerShell soporta varios tipos de datos:
- **String** (texto): `$texto = "Hola"`
- **Int** (entero): `$numero = 42`
- **Double** (decimal): `$precio = 19.99`
- **Boolean** (verdadero/falso): `$activo = $true`
- **Array** (lista): `$colores = "Rojo", "Azul", "Verde"`
- **Hashtable** (diccionario):
   ```powershell
   $persona = @{ nombre = "Carlos"; edad = 30 }
   ```
- **DateTime** (fecha): `$hoy = Get-Date`

### 3. Operadores
**Aritméticos:** `+`, `-`, `*`, `/`, `%`, `^`
```powershell
$a = 10
$b = 3
Write-Host "Suma: $($a + $b)"
```
**Comparación:** `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`
```powershell
Write-Host $a -eq $b  # ¿Son iguales?
```
**Lógicos:** `-and`, `-or`, `-not`
```powershell
$x = $true
$y = $false
Write-Host ($x -and $y)
```
**String:** `-like`, `-eq`, `-ieq`
```powershell
$texto1 = "PowerShell"
Write-Host ($texto1 -like '*Power*')
```

---

## Ejercicios Prácticos

### Variables
1. Crea 3 variables: comida favorita, deporte favorito, y un número que te represente.
2. Muestra un mensaje con toda la información.

### Tipos de Datos
1. Crea variables de diferentes tipos: texto, entero, decimal, booleano, array.
2. Muestra sus valores y tipos.

### Operadores
1. Calcula el área de un rectángulo.
2. Verifica si 25 es mayor que 10.
3. Crea una variable booleana que sea verdadera si tienes más de 18 años.

Puedes consultar los archivos `.ps1` en la carpeta `01-Conceptos-Basicos` para ver ejemplos completos y soluciones.