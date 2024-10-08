###########################################################################

# DropBox Setup: Installed Maestral in "maestral_venv" for syncing with 
# selective functionality

# Policies
# - I Use BULK=$HOME/bulk Python versions using pyenv
# - Installed pyenv in $HOME/bulk to save space in the 10GB home folder
# - $WS for DropBox + Local Data (Porjects Data + Non_Project Data)

###########################################################################

mycd()
{
  if [[ "$1" == "-" ]]; then
    cd "$@"
  else
    cd "$@" && pwd
  fi
}
alias cd=mycd

# source SSGAC bashrc & export variables
source "/var/genetics/misc/config/.ssgac_bashrc"
source ".export"

alias cdw="mycd $WS"
alias cdp="mycd $PD/24Q3/"
alias cdt="mycd $T"

function cpt() {
    cp -v $1 $T
}

DEFAULT_PROMPT=$PS1
PS1='[%3d] $ '

eval "$(pyenv init -)" # using eval to hide ouputs 
eval "$(pyenv virtualenv-init -)" # pyenv-virtualenv