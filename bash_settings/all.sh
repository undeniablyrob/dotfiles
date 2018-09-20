#---------- Bash Settings ------------------
export CLICOLOR=1
export MY_DOTFILES_FOLDER='~/dotfiles'
alias cdsettings="cd $MY_DOTFILES_FOLDER"
alias editbash='vi ~/.bash_profile'
alias reloadbash='source ~/.bash_profile'


#---------- General ------------------
trashme () {
	local folderToDelete=$1
	printf "Moving to trash: $folderToDelete..."
	mv $folderToDelete ~/.Trash
	echo ".done."
}

alias resetcamera="sudo Killall VDCAssistant"

alias adios=exit
alias cl=clear
mkcd () {
	mkdir $1 && cd $1
}
alias hiddenfiles='ls -a | grep "^\."'
alias listpaths="echo $PATH | tr ':' '\n'"

alias curljson='curl -H "Content-Type: application/json"'
alias jsondecode='pbpaste | base64 -D -i - | jq'


#---------- Ports / Network ----------------------
portopen () {
	local port=$1
	if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null ; then
		echo "running"
	else
		echo "not running"
	fi
}

killport () {
	local port=$1
	lsof -i tcp:$port | awk 'NR!=1 {print $2}' | xargs kill
}


#---------- iCloud ----------------------
export ICLOUD='~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias cdicloud="cd $ICLOUD"


#---------- Visual Studio Code ------------------
code () {
	VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}
alias codesettings="code $MY_DOTFILES_FOLDER"
