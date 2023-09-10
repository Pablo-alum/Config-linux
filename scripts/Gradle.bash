#!/bin/bash

# Redirige la información de los procesos a un archivo
lsof -i :8080 | grep java > procesos_java.txt

# Obtiene los PID de los procesos Java
pids=$(awk '{print $2}' procesos_java.txt)

# Mata los procesos Java utilizando sus PID
for pid in $pids; do
    kill $pid
done

# Limpia el archivo temporal
rm procesos_java.txt

# Iniciar gradle bootRun
gradle bootRun
