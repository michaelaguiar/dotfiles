[[ -f /etc/profile ]] && . /etc/profile

cyan='\e[0;36m'
NC='\e[0m' # No Color
DATE=$(date +"${cyan}%I:%M:%S %p${NC} on ${cyan}%A %b %d %Y")

echo -e "Welcome to: ${cyan}$(hostname)${NC}"
echo -e "Running: ${cyan}$(uname) $(uname -r) $(uname -m)${NC}"
echo -e "It is: $DATE"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="doubleend"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Alias
alias brewup='brew update && brew upgrade && brew cleanup'

# Customize to your needs...
export PATH=/usr/local/bin:$HOME/.composer/vendor/bin:/opt/homebrew/bin:$PATH
