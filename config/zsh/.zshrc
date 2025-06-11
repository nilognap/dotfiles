# nilo/.config/zsh/.zshrc

# source settings.sh
# source ui.sh
# source aliases.sh
# source environment.sh
# source plugins.sh

# source *.sh

for file in $HOME/.config/zsh/*.sh; do
    source "$file"
done

