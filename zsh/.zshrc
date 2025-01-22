# fnm
FNM_PATH="/home/pablo/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# Aliases
alias emscript_enable="source /home/pablo/SDKs/emsdk/emsdk_env.sh"

# import fzf keybindings
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
PATH=/home/pablo/.local/bin:$PATH
function _update_ps1() {
     PS1="$(powerline-shell --shell bash $?)"
 }
 if [[ -f /usr/share/powerline/bindings/bash/powerline.sh ]]; then
     source /usr/share/powerline/bindings/bash/powerline.sh
 fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"

source <(fzf --zsh)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

PATH=$PATH:$HOME/scripts
