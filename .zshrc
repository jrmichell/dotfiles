export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export PATH=~/.local/bin/:$PATH
export QT_QPA_PLATFORMTHEME=gtk3
export QT_QPA_PLATFORM=xcb
export QT_SCREEN_SCALE_FACTORS="1;1"

export PICO_SDK_PATH="$HOME/pico-sdk"

alias s='source ~/dotfiles/.zshrc'
alias ez='nvim ~/dotfiles/.zshrc'
alias c="clear"
alias cd="z"
alias vim="nvim"
alias ll='eza -la'
alias la='eza -A'
alias l='eza -l'
alias lt='eza -a . --tree -L'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "[WIP]: $(date)"'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'

alias arduino-compile-uno='sudo arduino-cli compile --fqbn arduino:avr:uno'
alias arduino-upload-uno='sudo arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno --verbose'
alias arduino-montior-uno='sudo arduino-cli monitor -p /dev/ttyUSB0 -b arduino:avr:uno baudrate=115200 lineending=NONE'

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
