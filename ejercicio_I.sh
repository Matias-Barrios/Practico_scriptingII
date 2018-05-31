ejercicio_I() {
    if [[ $# -ne 1 ]]
    then
        echo "Esta funcion solo acepta un parametro"
        return 255;
    fi

    mkdir -p ~/"$1"/{ejer,teo}
}