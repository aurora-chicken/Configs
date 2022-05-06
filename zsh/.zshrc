# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="arrow" # Theme

# Aliases
alias vim=nvim # Neovim good
alias tmx=tmux # Yes the one letter is too much effort
alias py=python3 # Python ayyyy

# Adding brew to path
PATH+=":/opt/homebrew/bin" # Makes stuff work

# Sourcing oh my zsh shell script
source "$ZSH/oh-my-zsh.sh"
