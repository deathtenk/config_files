export PROFILER=true
export PATH="$HOME/.rbenv/bin:$PATH"

# Enable bash completion for rbenv commands
alias cn='heroku run console --app'
alias vim='mvim -v'


source ~/.rbenv/completions/rbenv.bash
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

#for setting up new staq_web database
alias setup_staq_web='be rake db:drop; 
                      be rake db:create; 
                      be rake db:structure:load;
                      be rake db:migrate; 
                      be rake db:test:prepare'

# staq-storage
alias staq_storage='ssh -p 22 storageadmin@staq-storage.cloudapp.net'

# Enable bash completion for git commands/branches
source /usr/local/etc/bash_completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# Colors for prompt
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
OFF="\[\033[0m\]"

# Colorized prompt with rbenv version, git branch and current directory
export PS1="$RED\$(__rbenv_ps1) $GREEN\w$YELLOW\$(__git_ps1 "[%s]")$OFF \$ "


# my bin
PATH=~/bin

# rbenv
PATH+=:~/.rbenv/bin

# postgres
export PGHOME=/Applications/Postgres.app/Contents/Versions/9.3
PATH+=:$PGHOME/bin

# heroku
PATH+=:/usr/local/heroku/bin

# homebrew
PATH+=:/usr/local/bin

# unix
PATH+=:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

export PATH

# Load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# git
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git'
alias get='git'

#bundle
alias be='bundle exec'

#sublime
alias su='sublime'
