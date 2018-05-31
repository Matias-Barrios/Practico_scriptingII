ejercicio_VI() {

    #
    # Basandome en la respuesta dada aca, no se pueden incluir variables en una expansion de la shell
    # por lo tanto me limito a un for
    # https://github.com/koalaman/shellcheck/wiki/SC2051
    #
    if [[ $# -ne 2 ]]
    then
        echo "Esta funcion solo acepta dos parametros"
        return 255;
    fi

    if [[ ! $1 =~ ^[a-zA-Z]+$ ]]
    then
        echo "El primer parametro debe ser una string que matchee con esta expresion regular : ^[a-zA-Z]+$"
        echo "Asi no creamos archivos basura :P "
        return 255;
    fi
    if [[ ! $2 =~ ^[1-9]([1-9])?+$ ]]
    then
        echo "El segundo parametro debe ser un numero"
        return 255;
    fi
    if [[ $2 -lt 1  ]]
    then
        echo "El segundo parametro no puede ser menor a 1"
        return 255;
    fi
    
    for (( i=1 ; i <= $2 ; i++ ))
    do
        touch "${1}${i}"
    done
}