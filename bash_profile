export PS1="\[$(tput bold)\]\[\033[48;5;22m\] \h \[$(tput sgr0)\]\[\033[38;5;251m\]\[\033[48;5;237m\] \w \[$(tput sgr0)\] "
export CLICOLOR=1                      # Activate colors
export LSCOLORS=GxFxCxDxBxegedabagaced # Adjust colors for command "ls"
export HISTCONTROL="erasedups"         # Remove duplicate from history
export GREP_OPTIONS="--color=auto"     # Force colorization on "grep" command
export OLDPWD=~                        # Avoid error on new terminal when using "cd -"
complete -cf sudo                      # Allow commands autocompletion when using sudo
source ~/.git-completion.bash # Include Git autocompletion script (https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)
# Allow very basic autocompletion for Vagrant (using a "cache" file to speed up new terminal opening)
if [ ! -f ~/.vagrant-completion ]; then (echo `vagrant --help | awk '/box/,/version/ {print $1}'`;) >> ~/.vagrant-completion; fi
complete -W "$(cat ~/.vagrant-completion)" vagrant

