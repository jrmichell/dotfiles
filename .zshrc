export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export PATH=~/.local/bin/:$PATH
export QT_QPA_PLATFORMTHEME=gtk3
export QT_QPA_PLATFORM=xcb
export QT_SCREEN_SCALE_FACTORS="1;1"

alias s='source ~/dotfiles/.zshrc'
alias ez='nvim ~/dotfiles/.zshrc'
alias c="clear"
alias cd="z"
alias vim="nvim"
alias ll='eza -la'
alias la='eza -A'
alias l='eza -l'
alias lt='eza -a .?* --tree -L'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "[WIP]: $(date)"'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jack/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jack/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jack/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jack/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opencode
export PATH=/home/jrmichell/.opencode/bin:$PATH
