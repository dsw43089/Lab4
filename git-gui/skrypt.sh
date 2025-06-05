#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    count=${2:-100}
    for ((i=1; i<=count; i++)); do
        filename="log$i.txt"
        echo -e "Nazwa pliku: $filename\nSkrypt: $0\nData: $(date)" > "$filename"
    done
fi

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "--date, -d : wyświetla datę"
    echo "--logs [n], -l [n] : tworzy pliki log"
    echo "--error [n], -e [n] : tworzy katalogi errorX z plikiem"
    echo "--init : klonuje repo i ustawia PATH"
    echo "--help, -h : pokazuje pomoc"
fi


if [[ "$1" == "--init" ]]; then
    git clone https://github.com/dsw43089/Lab4.git .
    export PATH="$PATH:$(pwd)"
fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
    count=${2:-100}
    for ((i=1; i<=count; i++)); do
        mkdir -p "error$i"
        echo -e "Błąd nr $i\nSkrypt: $0\nData: $(date)" > "error$i/error$i.txt"
    done
fi
