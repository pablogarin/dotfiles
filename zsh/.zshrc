# fnm
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# Aliases
alias emscript_enable="source $HOME/SDKs/emsdk/emsdk_env.sh"

# import fzf keybindings
PATH=$HOME/.local/bin:$PATH
function _update_ps1() {
     PS1="$(powerline-shell --shell bash $?)"
 }
 if [[ -f /usr/share/powerline/bindings/bash/powerline.sh ]]; then
     source /usr/share/powerline/bindings/bash/powerline.sh
 fi

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export PATH=$PATH:/usr/local/go/bin

alias vim="nvim"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PATH=~/.npm-global/bin:$PATH
