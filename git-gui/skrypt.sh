if [[ "$1" == "--date" ]]; then
    date
fi

if [[ "$1" == "--logs" ]]; then
    count=${2:-100}  # domyślnie 100
    for ((i=1; i<=count; i++)); do
        filename="log$i.txt"
        echo -e "Nazwa pliku: $filename\nSkrypt: $0\nData: $(date)" > "$filename"
    done
fi
