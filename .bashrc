# ------ Startup ------
echo -e "\n\n\n"
# ------ Prompt ------
PS1="\W ❯ "
# ------ Aliases ------
alias vi='nvim'
alias vim='nvim'
alias ls='lsd'
alias la='lsd -a'
# ------ Bash completions ------
source ~/.bash_completion/alacritty
# ------ Rust ------
. "$HOME/.cargo/env"

# ------ Node Version Manager ------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
