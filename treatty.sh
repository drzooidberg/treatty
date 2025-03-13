#!/bin/bash
# hackterm.sh - Script para configurar la terminal para laboratorios de hacking
# Uso: ./hackterm.sh o source hackterm.sh

echo "[+] Iniciando configuración de terminal para laboratorios de hacking..."

# Iniciar script para grabar la sesión
script /dev/null -c bash &
SCRIPT_PID=$!

# Esperar un momento para que script inicie correctamente
sleep 1

# Simular Ctrl+Z para suspender el proceso
kill -SIGTSTP $SCRIPT_PID

# Configurar terminal en modo raw sin eco
stty raw -echo

# Traer el proceso script de vuelta al primer plano
fg %script > /dev/null 2>&1

# Restablecer configuración del terminal
reset xterm

# Configurar variables de entorno
export TERM=xterm
export SHELL=/bin/bash

echo "[+] Terminal configurada correctamente para laboratorios de hacking"
echo "[+] Tipo de terminal: $TERM"
echo "[+] Shell: $SHELL"
