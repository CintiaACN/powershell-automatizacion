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

---

## Manejo de Archivos y Carpetas en PowerShell

### Listar archivos y carpetas
```powershell
# Lista todos los archivos y carpetas en el directorio actual
Get-ChildItem
# Lista archivos en una ruta específica
Get-ChildItem C:\Users\TuUsuario\Documentos
```

### Crear carpetas y archivos
```powershell
# Crear una carpeta
New-Item -Path "C:\Temp\NuevaCarpeta" -ItemType Directory
# Crear un archivo de texto vacío
New-Item -Path "C:\Temp\archivo.txt" -ItemType File
```

### Escribir y leer archivos de texto
```powershell
# Escribir texto en un archivo
Set-Content -Path "C:\Temp\archivo.txt" -Value "Hola, mundo!"
# Leer el contenido de un archivo
Get-Content -Path "C:\Temp\archivo.txt"
```

### Copiar, mover y eliminar archivos/carpetas
```powershell
# Copiar archivo
Copy-Item -Path "C:\Temp\archivo.txt" -Destination "C:\Temp\archivo_copia.txt"
# Mover archivo
Move-Item -Path "C:\Temp\archivo.txt" -Destination "C:\Temp\Subcarpeta\archivo.txt"
# Eliminar archivo
Remove-Item -Path "C:\Temp\archivo_copia.txt"
# Eliminar carpeta (y su contenido)
Remove-Item -Path "C:\Temp\NuevaCarpeta" -Recurse
```

---

## Ejercicios Prácticos de Archivos y Carpetas

1. Crea una carpeta llamada `PruebasPS` en tu escritorio.
2. Dentro de esa carpeta, crea un archivo llamado `saludo.txt` y escribe tu nombre en él.
3. Lee el contenido de `saludo.txt` y muéstralo por pantalla.
4. Copia el archivo `saludo.txt` a una subcarpeta llamada `Backup`.
5. Elimina el archivo original `saludo.txt` (deja solo la copia en `Backup`).

Estos ejercicios te ayudarán a practicar la automatización de tareas con archivos y carpetas en PowerShell.

---

## Desafío Integrador Opcional: Gestor de Tareas Semanal

1. Crea una carpeta llamada `TareasSemana` en tu escritorio.
2. Dentro de esa carpeta, crea un archivo para cada día de la semana (`lunes.txt`, `martes.txt`, ..., `domingo.txt`) usando un bucle.
3. Escribe en cada archivo una tarea diferente (puedes inventarlas).
4. Lee y muestra por pantalla el contenido de todos los archivos usando un bucle.
5. Crea una subcarpeta llamada `Realizadas`.
6. Mueve los archivos `lunes.txt`, `miércoles.txt` y `viernes.txt` a la carpeta `Realizadas`.
7. Elimina el archivo `domingo.txt`.
8. Muestra por pantalla la lista de archivos que quedan en `TareasSemana` y en `Realizadas`.

Opcional: Automatiza todo el proceso en un solo script `.ps1`.

Este desafío te ayudará a consolidar el manejo de variables, bucles, condicionales y automatización de archivos en PowerShell.

### 🔍 Verificación de archivos con `-Recurse -File`

El comando:

```powershell
Get-ChildItem <ruta> -Recurse -File
se utiliza para listar todos los archivos existentes dentro de una carpeta y sus subcarpetas, de forma recursiva.
Es especialmente útil para:
verificar que los archivos no se hayan perdido, sino que estén en otra subcarpeta
validar el resultado final de un script que mueve archivos
evitar suposiciones sobre dónde “deberían” estar los archivos
Al usar -Recurse, PowerShell recorre toda la estructura de carpetas, y con -File se limita a mostrar solo archivos (excluyendo carpetas).
Este comando es una herramienta clave de debugging y validación, ya que permite confirmar el estado real del filesystem independientemente de la lógica del script.

---------------------
Regla de oro
Si un script trabaja con archivos:
NUNCA confíes en rutas relativas.
Siempre anclá con $env:USERPROFILE + Join-Path.
ejemplo: 
$base = Join-Path $env:USERPROFILE "Desktop\WorkFiles"
$processed = Join-Path $base "Processed"
Con esto: no importa desde dónde ejecutes el script y no "desaparece" nada

-------------
Qué haceOut-Null? Descarta la salida
> $nullDescarta salida y errores
 (más agresivo)Write-HostImprime texto “a mano”
 -PassThruDevuelve el objeto creado/modificado
 Regla mental: Out-Null = “hacelo, pero no me lo muestres”. No usar cuando se está debuggeando