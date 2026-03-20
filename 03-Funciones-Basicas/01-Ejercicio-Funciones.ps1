# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Crea una función que:" -ForegroundColor Yellow
Write-Host "1. Se llame 'Multiplicar'" -ForegroundColor Yellow
Write-Host "2. Reciba dos parámetros (número1 y número2)" -ForegroundColor Yellow
Write-Host "3. Retorne el resultado de la multiplicación" -ForegroundColor Yellow
Write-Host "4. Llama la función 3 veces con diferentes números" -ForegroundColor Yellow

#Write-Host "`n=== SOLUCIÓN EJERCICIO ===" -ForegroundColor Green
function Multiplicar {
    param(
        [int]$numero1,
        [int]$numero2
    )
    
    return $numero1 * $numero2
}

Multiplicar -numero1 5 -numero2 3
Multiplicar -numero1 10 -numero2 4
Multiplicar -numero1 7 -numero2 6
Write-Host "Resultado: $(Multiplicar -numero1 5 -numero2 3)" -ForegroundColor Green
Write-Host "Resultado: $(Multiplicar -numero1 10 -numero2 4)" -ForegroundColor Green
Write-Host "Resultado: $(Multiplicar -numero1 7 -numero2 6)" -ForegroundColor Green