# Source all .sh files
for file in ~/dotfiles/bash_settings/*.sh; do
	source "$file"
done

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
