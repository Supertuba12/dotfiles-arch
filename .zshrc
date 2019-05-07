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
export PATH=$HOME/scripts:$JAVA_HOME/bin:$PATH;
export PRODUCTION=false # Controls whether to use HTTPS + EMAIL
export PRODUCTION_KEY=random_key # Can be whatever
export USE_STATIC_FILES=false # Set this to true during production
export WEBSITE=http://localhost:8000/API/activate_user/ # Used a link for activating a user
export EMAIL_HOST=mail.gandi.net
export EMAIL_PORT=587
export EMAIL_USERNAME=noreply@uniquiz.se
export EMAIL_PASSWORD=Emilojonisarbast9593@