#!/bin/bash


################################################
## Aca definimos variables globales
################################################
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)

source ./ejercicio_I.sh
source ./ejercicio_II.sh
source ./ejercicio_III.sh
source ./ejercicio_IV.sh
source ./ejercicio_V.sh
source ./ejercicio_VI.sh


################################################
## Aca definimos todas las funciones.
## Modularizamos porque somo prolijos :P
################################################
Startup_message() {
    clear
    echo "${MAGENTA}Bienvenido!${NORMAL}"
    echo "Este script fue escrito por  ${RED}Matias Barrios${NORMAL} en Mayo de 2018 - Grupo 3IH"
    echo "El codigo del mismo se puede encontrar en GitHub : ${GREEN}https://github.com/Matias-Barrios/Practico_scriptingII${NORMAL}"
    echo "Este script fue testeado en ${GREEN}Xubuntu 16.04${NORMAL}"
    echo "La version de BASH usada es : ${GREEN}4.3.48${NORMAL}"
    echo "${YELLOW}A continuacion procedemos a realizar los ejercicios uno por uno...${NORMAL}"
    Contador
}

Contador() { 
    if [ $1 ]
    then
        clear
    fi
    for i in {10..0}
    do
        printf "$i..."
        sleep 1 
        printf $'\b'$'\b'$'\b'$'\b'$'\b'
        printf "     "
        printf $'\b'$'\b'$'\b'$'\b'$'\b'
    done
}


Ejercicio_1 () {
    clear
    echo "${CYAN} Corriendo Ejercicio 1... ${NORMAL}"
    printf "\n"

    echo "${RED}Este ejercicio podria no generar output!${NORMAL}"
    ejercicio_I una_carpeta_cualquiera

    printf "\n"
    echo "${CYAN}**** Ejercicio 1 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_2 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 2... ${NORMAL}"
    printf "\n"
   
    ejercicio_II Larry Moe Curly

    printf "\n"
    echo "${CYAN}**** Ejercicio 2 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_3 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 3... ${NORMAL}"
    printf "\n"
    
    ejercicio_III 

    printf "\n"
    echo "${CYAN}**** Ejercicio 3 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_4 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 4... ${NORMAL}"
    printf "\n"
    
    ejercicio_IV /etc/hostname
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 4 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_5 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 5... ${NORMAL}"
    printf "\n"
    
    ejercicio_V sudoers
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 5 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_6 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 6... ${NORMAL}"
    printf "\n"
    
    ejercicio_VI file 5
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 6 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}

###################################################
## FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN
###################################################

## Aca empieza la cosa
Startup_message
Ejercicio_1
Ejercicio_2
Ejercicio_3
Ejercicio_4
Ejercicio_5
Ejercicio_6
