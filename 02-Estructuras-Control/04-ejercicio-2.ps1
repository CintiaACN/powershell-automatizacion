# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
# Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
# Write-Host "Resuelve estos ejercicios:" -ForegroundColor Yellow
# Write-Host "1. Crea un bucle que imprima los números del 1 al 10" -ForegroundColor Yellow
# Write-Host "2. Crea un bucle que multiplique cada número por 2" -ForegroundColor Yellow
# Write-Host "3. Crea un array con 5 nombres y muéstralos uno por uno con FOREACH" -ForegroundColor Yellow

#mi script

# Write-Host "=== EJERCICIO PRÁCTICO ===" -ForegroundColor Yellow
# Write-Host "===Numeros del 1 al 10===" -ForegroundColor Green
# for($i; $i -le 10; $i++){
#     Write-Host $i
# }

# Write-Host "===Numeros del 1 al 10 multiplicados por 2===" -ForegroundColor Green
# for($i; $i -le 10; $i++){
#     Write-Host ($i * 2)
# }

Write-Host "===Nombres en un array===" -ForegroundColor Green
$nombres = "Ana", "Luis", "Alvaro", "Marta", "Sofía"
foreach($nombre in $nombres){
    Write-Host $nombre
}