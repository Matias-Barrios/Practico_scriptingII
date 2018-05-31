ejercicio_IV() {
    if [[ $# -ne 1 ]]
    then
        echo "Esta funcion solo acepta un parametro"
        return 255;
    fi

    cat "$1"
}