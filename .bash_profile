source ~/.bash_prompt
source ~/.aliases 

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#ADDING NVIM TO PATH
export PATH="$HOME/homebrew/bin:$PATH"

