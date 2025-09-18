# Define el nuevo nombre del equipo
$newName = "ws2k12-31"

# Cambia el nombre del equipo
Rename-Computer -NewName $newName -Force -Restart
