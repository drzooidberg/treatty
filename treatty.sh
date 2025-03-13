#!/bin/bash

echo "[+] Tratando la terminal..."
script /dev/null -c bash &
SCRIPT_PID=$!
sleep 1
kill -SIGTSTP $SCRIPT_PID
stty raw -echo
fg %script > /dev/null 2>&1
reset xterm
export TERM=xterm
export SHELL=/bin/bash
echo "[+] Terminal tratada correctamente"
echo "[+] Tipo de terminal: $TERM"
echo "[+] Shell: $SHELL"
