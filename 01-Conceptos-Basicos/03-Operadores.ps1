# ====================================================================
# LECCIÓN 3: OPERADORES EN POWERSHELL
# ====================================================================
# Los operadores nos permiten hacer cálculos y comparaciones

# OPERADORES ARITMÉTICOS
Write-Host "=== OPERADORES ARITMÉTICOS ===" -ForegroundColor Cyan
$a = 10
$b = 3

Write-Host "Suma: $a + $b = $($a + $b)"
Write-Host "Resta: $a - $b = $($a - $b)"
Write-Host "Multiplicación: $a * $b = $($a * $b)"
Write-Host "División: $a / $b = $($a / $b)"
Write-Host "Módulo (resto): $a % $b = $($a % $b)"
Write-Host "Potencia: $a ^ 2 = $([Math]::Pow($a, 2))"

# OPERADORES DE COMPARACIÓN
Write-Host "`n=== OPERADORES DE COMPARACIÓN ===" -ForegroundColor Cyan
$numero1 = 15
$numero2 = 20

Write-Host "$numero1 es igual a $numero2? $($numero1 -eq $numero2)"
Write-Host "$numero1 no es igual a $numero2? $($numero1 -ne $numero2)"
Write-Host "$numero1 es mayor que $numero2? $($numero1 -gt $numero2)"
Write-Host "$numero1 es menor que $numero2? $($numero1 -lt $numero2)"
Write-Host "$numero1 es mayor o igual a $numero2? $($numero1 -ge $numero2)"
Write-Host "$numero1 es menor o igual a $numero2? $($numero1 -le $numero2)"

# OPERADORES LÓGICOS
Write-Host "`n=== OPERADORES LÓGICOS ===" -ForegroundColor Cyan
$es_estudiante = $true
$tiene_experiencia = $false

Write-Host "¿Es estudiante? $es_estudiante"
Write-Host "¿Tiene experiencia? $tiene_experiencia"
Write-Host "`n¿Es estudiante Y tiene experiencia? $($es_estudiante -and $tiene_experiencia)"
Write-Host "¿Es estudiante O tiene experiencia? $($es_estudiante -or $tiene_experiencia)"
Write-Host "¿NO es estudiante? $(-not $es_estudiante)"

# OPERADORES DE STRING (Texto)
Write-Host "`n=== OPERADORES DE STRING (Texto) ===" -ForegroundColor Cyan
$texto1 = "PowerShell"
$texto2 = "es genial"

# Write-Host "Concatenación: '$texto1' + ' ' + '$texto2' = '$texto1 $texto2'"
# Write-Host "¿'PowerShell' contiene 'Power'? $($texto1 -like '*Power*')"
# Write-Host "¿'PowerShell' es igual a 'powershell'? $($texto1 -eq 'powershell')"
# Write-Host "¿'PowerShell' es igual a 'powershell' (ignorar mayúsculas)? $($texto1 -ieq 'powershell')"

# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Resuelve estos ejercicios:" -ForegroundColor Yellow

# Ejercicio 1: Calcula el área de un rectángulo
$largo = 5
$ancho = 3
# Escribe: Write-Host "Área del rectángulo: ?"
# Ejercicio 2: Verifica si 25 es mayor que 10
# Escribe: Write-Host "¿25 es mayor que 10? ?"
# Ejercicio 3: Crea una variable booleana que sea verdadera si tienes más de 18 años
# (Cambia tu edad)
# Escribe: $edad = ?
# Escribe: $soy_mayor = ?