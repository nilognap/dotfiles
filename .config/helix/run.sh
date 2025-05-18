#!/usr/bin/env zsh

# run-script.zsh
FILE="$1"
FILENAME="${FILE##*/}"
BASENAME="${FILENAME%.*}"
EXTENSION="${FILENAME##*.}"
DIR="${FILE%/*}"

case "$EXTENSION" in
    c)
        gcc -Wall "$FILE" -o "${FILE%.*}" && "${FILE%.*}"
        ;;
    cpp)
        g++ -Wall -std=c++11 "$FILE" -o "${FILE%.*}" && "${FILE%.*}"
        ;;
    py)
        python3 "$FILE"
        ;;
    java)
        # Extract package declaration
        PACKAGE_LINE=$(grep -m1 '^package\s\+.*;' "$FILE")
        
        if [[ -z "$PACKAGE_LINE" ]]; then
            # No package case
            javac -Xlint:all -Werror "$FILE" && java -cp "$DIR" "$BASENAME"
        else
            # Package handling
            PACKAGE=$(sed -E 's/^package\s+([^;]+);/\1/' <<< "$PACKAGE_LINE")
            DEPTH=$(tr -cd '.' <<< "$PACKAGE" | wc -c)
            
            # Build source path
            SRC_PATH=".."
            for ((i=0; i<DEPTH; i++)); do
                SRC_PATH+="/.."
            done
            
            # Compile and run
            javac -Xlint:all -Werror -cp "$SRC_PATH" "$FILE" && \
            java -cp "$SRC_PATH" "${PACKAGE}.${BASENAME}"
        fi
        
        # Display .out file if exists
        OUT_FILE="${FILE%.*}.out"
        if [[ -f "$OUT_FILE" ]]; then
            echo "\nContents of ${OUT_FILE}:"
            cat "$OUT_FILE"
        fi
        ;;
    *)
        echo "Unsupported file type: $EXTENSION"
        ;;
esac
