alias resetcamera="sudo Killall VDCAssistant"
alias cl="clear"
mkcd () {
  mkdir $1 && cd $1
}
alias hiddenfiles='ls -a | grep "^\."'
alias listpaths="echo $PATH | tr ':' '\n'"
alias startssh='echo "[TIP] RUN: ssh-agent && ssh-add ~/.ssh/id_rsa"'

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
