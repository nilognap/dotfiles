#!/usr/bin/env zsh

file="$1"
filename="${file##*/}"
basename="${filename%.*}"
extension="${filename##*.}"

case "$extension" in
	c)
		gcc -Wall "$file" -o "$basename" && ./"$basename"
		;;
	cpp)
		g++ -Wall -std=c++11 "$file" -o "$basename" && ./"$basename"
		;;
	py)
		python3 "$file"
		;;
	java)
		package_line=$(grep -m1 "^package\s.*;$" "$file")
		if [[ -z "$package_line" ]]; then
			javac -Xlint:all -Werror "$file" && java "$basename"
		else
			# W deepseek
			class_path="${${package_line#package[[:space:]]}%;*}"
			depth=$(( ${#package//[^.]} ))
			src_path=$(printf "../%.0s" $(seq 1 $((depth + 1))))
			javac -Xlint:all -Werror -cp "$src_path" "$filename" && \
            java -cp "$src_path" "${class_path}.${basename}"
		fi
		;;
	*)
		echo "unsupported file type"
		exit 1
		;;
esac

# display .out file if there is one
if [[ -f "${BASENAME}.out" ]]; then
	cat "${BASENAME}.out"
fi

