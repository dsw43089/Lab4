if [[ "$1" == "--date" ]]; then
    date
fi

if [[ "$1" == "--logs" ]]; then
    for ((i=1; i<=100; i++)); do
        filename="log$i.txt"
        echo -e "Nazwa pliku: $filename\nSkrypt: $0\nData: $(date)" > "$filename"
    done
fi

