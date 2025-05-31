if [ "$TERM_PROGRAM" = "vscode" ]
then

else
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

