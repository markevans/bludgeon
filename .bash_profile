export PATH=$HOME/bin:$PATH
export EDITOR='mate'
export PS1='\u: \W$(git_branch_for_ps1) > '

# Aliases
alias gx='gitx --all'
alias gst='git status'
alias gca='git commit -a'
alias gci='git commit'
alias ll='ls -lhGart'

# Git
export GIT_EDITOR='vim'
source ~/git-completion.sh

# Shortcuts
if [ -f ~/.shortcuts.sh ]; then source ~/.shortcuts.sh; fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

