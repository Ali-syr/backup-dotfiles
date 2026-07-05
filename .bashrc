#
# ~/.bashrc
#



# ─── Python env ─────────────────────────
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
        python -m venv "$name" || return 1
    fi
    _activate_venv "$name"
}

venv() { _activate_venv "${1:-.venv}" }
