ejercicio_VI() {
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
    command="touch $1{1..$2}"
    `"$command"`
    
}