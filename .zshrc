#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Make vim default editor
export EDITOR=/usr/bin/vim

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Alias
# 
alias cd..='cd ..'
alias ls='ls -l'
alias cl='clear'
alias isy='ssh -X hamer848@ixtab.edu.isy.liu.se'
alias chrome='google-chrome-stable'
# functions
# 
# virutalenv workon
function workon() { 
  source $HOME/virtualenvs/$1/bin/activate
}
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
export PATH=$JAVA_HOME/bin:$PATH;
