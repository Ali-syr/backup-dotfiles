# ─── History ─────────────────────────────────────────────────────
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

alias ls="ls -la"


# ─── Python Venv Functions ─────────────────────────────────────────
_activate_venv() { 
    if [[ -f "$1/bin/activate" ]]; then
        source "$1/bin/activate"
    else
        echo "Error: Virtual environment not found at '$1'."
    fi
}

mkvenv() {
    local name="${1:-.venv}"
    if [[ ! -d "$name" ]]; then
        python3 -m venv "$name" || return 1
    fi

    _activate_venv "$name"
}

venv() { _activate_venv "${1:-.venv}" }
pwnvenv() { _activate_venv "$HOME/pwndbg/.venv" }

fpath=(/usr/share/zsh/site-functions $fpath)
autoload -U compinit && compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

