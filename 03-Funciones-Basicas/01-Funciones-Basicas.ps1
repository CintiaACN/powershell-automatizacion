# ====================================================================
# LECCIÓN 6: FUNCIONES EN POWERSHELL
# ====================================================================
# Una función es un bloque de código reutilizable
# La defines una vez y la usas múltiples veces

# EJEMPLO 1: Función simple sin parámetros
Write-Host "=== EJEMPLO 1: Función Simple ===" -ForegroundColor Cyan

function Saludar {
    Write-Host "¡Hola! Bienvenido a PowerShell" -ForegroundColor Green
}

# Llamar la función
Saludar
Saludar  # Puedo llamarla de nuevo

# EJEMPLO 2: Función con parámetros
Write-Host "`n=== EJEMPLO 2: Función con Parámetros ===" -ForegroundColor Cyan

function SaludarPersona {
    param(
        [string]$nombre,
        [int]$edad
    )
    
    Write-Host "¡Hola $nombre! Tienes $edad años" -ForegroundColor Yellow
}

# Llamar la función con parámetros
SaludarPersona -nombre "María" -edad 25
SaludarPersona -nombre "Carlos" -edad 30

# EJEMPLO 3: Función que devuelve un valor
Write-Host "`n=== EJEMPLO 3: Función que Retorna Valores ===" -ForegroundColor Cyan

function Sumar {
    param(
        [int]$num1,
        [int]$num2
    )
    
    $resultado = $num1 + $num2
    return $resultado
}

$suma = Sumar -num1 10 -num2 5
Write-Host "10 + 5 = $suma" -ForegroundColor Cyan

# EJEMPLO 4: Función que calcula el área de un rectángulo
Write-Host "`n=== EJEMPLO 4: Función Práctica ===" -ForegroundColor Cyan

function CalcularArea {
    param(
        [double]$largo,
        [double]$ancho
    )
    
    $area = $largo * $ancho
    return $area
}

$area_rectangulo = CalcularArea -largo 5 -ancho 3
Write-Host "Área del rectángulo: $area_rectangulo metros cuadrados" -ForegroundColor Green

# EJEMPLO 5: Función con múltiples retornos
Write-Host "`n=== EJEMPLO 5: Función con Múltiples Valores ===" -ForegroundColor Cyan

function ObtenerInfo {
    param(
        [string]$nombre
    )
    
    $edad = 25
    $ciudad = "Madrid"
    
    # Retornar un objeto con múltiples valores
    return @{
        nombre = $nombre
        edad = $edad
        ciudad = $ciudad
    }
}

$info = ObtenerInfo -nombre "Juan"
Write-Host "Nombre: $($info['nombre'])"
Write-Host "Edad: $($info['edad'])"
Write-Host "Ciudad: $($info['ciudad'])"

# EJEMPLO 6: Función que valida información
Write-Host "`n=== EJEMPLO 6: Función de Validación ===" -ForegroundColor Cyan

function EsMayorDeEdad {
    param(
        [int]$edad
    )
    
    if ($edad -ge 18) {
        return $true
    } else {
        return $false
    }
}

$es_mayor = EsMayorDeEdad -edad 20
if ($es_mayor) {
    Write-Host "La persona es mayor de edad" -ForegroundColor Green
} else {
    Write-Host "La persona es menor de edad" -ForegroundColor Red
}

# EJEMPLO 7: Función que procesa un array
Write-Host "`n=== EJEMPLO 7: Función con Arrays ===" -ForegroundColor Cyan

function SumarArray {
    param(
        [int[]]$numeros
    )
    
    $suma = 0
    foreach ($numero in $numeros) {
        $suma += $numero
    }
    
    return $suma
}

$numeros = 1, 2, 3, 4, 5
$total = SumarArray -numeros $numeros
Write-Host "Suma de $numeros = $total" -ForegroundColor Cyan

# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Crea una función que:" -ForegroundColor Yellow
Write-Host "1. Se llame 'Multiplicar'" -ForegroundColor Yellow
Write-Host "2. Reciba dos parámetros (número1 y número2)" -ForegroundColor Yellow
Write-Host "3. Retorne el resultado de la multiplicación" -ForegroundColor Yellow
Write-Host "4. Llama la función 3 veces con diferentes números" -ForegroundColor Yellow

# Escribe tu código aquí:
# function Multiplicar {
#     param(...)
#     ...
#     return $resultado
# }