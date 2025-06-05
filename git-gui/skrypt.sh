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
    echo "--date, -d : wyświetla dzisiejszą datę"
    echo "--logs [n], -l [n] : tworzy n plików log"
    echo "--help, -h : wyświetla tę pomoc"
fi

