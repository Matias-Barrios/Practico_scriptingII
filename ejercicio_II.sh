ejercicio_II () {
    if [[ $# -ne 3 ]]
    then
        echo "Esta funcion necesita tres parametros"
        return 255;
    fi
    if [[ $1 != "Larry" ]] 
    then
        echo "El primer parametro debe ser 'Larry'"
        return 254;
    fi
    if [[ $2 != "Moe" ]]
    then
        echo "El segundo parametro debe ser 'Moe'"
        return 253;
    fi
    if [[ $3 != "Curly" ]] 
    then
        echo "El tercer parametro debe ser 'Curly'"
        return 252;
    fi

    echo "Recuento de chiflados : $#"
}
