# nilo/.config/zsh/environment.sh

bin_path="$HOME/.config/bin"
if [ -d "$bin_path" ]; then
	export PATH="$bin_path:$PATH"
fi

# languages
# alias python=/usr/local/bin/python3.13
# export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
# export PATH="/usr/local/opt/openjdk/bin:$PATH"

# pesky history files
export LESSHISTFILE="$HOME/.config/less/history"
export PYTHONHISTFILE="$HOME/.config/python/.python_history"

