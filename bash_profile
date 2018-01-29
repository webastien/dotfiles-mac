# Customize prompt message
export PS1="\[$(tput bold)\]\[\033[48;5;22m\] \h \[$(tput sgr0)\]\[\033[38;5;251m\]\[\033[48;5;237m\] \w \[$(tput sgr0)\] "

export CLICOLOR=1                      # Activate colors
export LSCOLORS=GxFxCxDxBxegedabagaced # Adjust colors for command "ls"
export HISTCONTROL="erasedups"         # Remove duplicate from history
export GREP_OPTIONS="--color=auto"     # Force colorization on "grep" command
export OLDPWD=~                        # Avoid error on new terminal when using "cd -"
complete -cf sudo                      # Allow commands autocompletion when using sudo

# Hostname autocompletion for ssh, scp and sftp commands, based on subfolders
if [ -d ~/.ssh/config.d ] ; then
  complete -W "$(ls ~/.ssh/config.d)" ssh scp sftp
fi

# Include Git autocompletion script
if which git > /dev/null ; then
  if [ ! -f ~/.git-completion.bash ]; then 
    curl -s "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" -o ~/.git-completion.bash
  fi

  source ~/.git-completion.bash 
fi

# Allow very basic autocompletion for Vagrant (using a "cache" file to speed up new terminal opening)
if which vagrant > /dev/null ; then
  if [ ! -f ~/.vagrant-completion ]; then 
    (echo `vagrant --help | awk '/box/,/version/ {print $1}'`;) >> ~/.vagrant-completion
  fi

  complete -W "$(cat ~/.vagrant-completion)" vagrant
fi

