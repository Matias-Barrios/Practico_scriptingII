ejercicio_V() {
    if [[ $# -ne 1 ]]
    then
        echo "Esta funcion solo acepta un parametro"
        return 255;
    fi

    find / -type f -name "$1" 2>/dev/null
}