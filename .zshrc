if [ "$TERM_PROGRAM" = "ghostty" ] && [ -z "$NVIM" ]; then
    fastfetch
fi

alias ls="lsd"
alias cat="bat"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/amrit/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/amrit/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/amrit/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/amrit/google-cloud-sdk/completion.zsh.inc'; fi

mkcd () {
  mkdir "$1"
  cd "$1"
}

conda-initialize() {
    __conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    elif [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
    unset __conda_setup
    echo "Conda initialized"
}

bg() {
  local state_file="$HOME/.bg_pids"

  case "$1" in
    -l)
      [[ -f "$state_file" ]] || return
      while read -r pid cmd; do
        if ps -p "$pid" > /dev/null 2>&1; then
          echo "$pid $cmd"
        fi
      done < "$state_file"
      ;;
    -k)
      shift
      [[ -f "$state_file" ]] || return
      while read -r pid cmd; do
        if [[ -z "$1" || "$pid" == "$1" ]]; then
          kill "$pid" 2>/dev/null
        fi
      done < "$state_file"
      ;;
    *)
      "$@" >/dev/null 2>&1 &
      local pid=$!
      echo "$pid $*" >> "$state_file"
      ;;
  esac
}


export PATH=/Users/amrit/.local/bin:$PATH

export EDITOR=vim
export CC="$(brew --prefix llvm)/bin/clang"
export CXX="$(brew --prefix llvm)/bin/clang++"
