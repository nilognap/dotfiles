#!/usr/bin/env zsh

file="$1"
base="${file%.*}"

filename="${file##*/}"
extension="${filename##*.}"

case "$extension" in
	c)
		gcc -Wall "$file" -o "$base" && ./"$base"
		;;
	cpp)
		g++ -Wall -std=c++11 "$file" -o "$base" && ./"$base"
		;;
	py)
		python3 "$file"
		;;
	java)
		package_line=$(grep -m1 "^package\s.*;$" "$file")
		dir=$(dirname "$file")
		basename="${filename%.*}"
		if [[ -z "$package_line" ]]; then
			# javac -Xlint:all -Werror $dir/*.java && java -cp "$dir" "$basename"
			javac $dir/*.java && java -cp "$dir" "$basename"
		else
			# W deepseek
			class_path="${${package_line#package[[:space:]]}%;*}"
			depth=$(( ${#package//[^.]} ))
			src_path=$(printf "../%.0s" $(seq 1 $((depth + 1))))
			# javac -Xlint:all -Werror -cp "$dir/$src_path" $dir/*.java && \
			# 	java -cp "$dir/$src_path" "${class_path}.${basename}"
			javac -cp "$dir/$src_path" $dir/*.java && \
				java -cp "$dir/$src_path" "${class_path}.${basename}"
		fi
		;;
	*)
		echo "unsupported file type"
		exit 1
		;;
esac

# display .out file if there is one
if [[ -f "${base}.out" ]]; then
	cat "${base}.out"
fi

