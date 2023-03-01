# ------ On load ------ #
echo -e "\n\n\n"

# ------ git ------ #
autoload -Uz add-zsh-hook vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git:*' formats       '(%b) '

# ------ Prompt ------ #
PS1='%~ %F{cyan}${vcs_info_msg_0_}%f%F{magenta}❯%f '

# ------ Rust ------ #
. "$HOME/.cargo/env"

# ------ Node Version Manager ------ #
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# ------ Go ------ #
export PATH=$PATH:/usr/local/go/bin

# ------ Oh My zsh ------ #
export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 100
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git gh zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey '\t' autosuggest-accept

# ------ Aliases ------ #
source ~/.files/aliases.sh

# ------ Functions ------#
source ~/.files/functions.sh
