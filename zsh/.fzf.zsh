# Setup fzf
# ---------
if [[ ! "$PATH" == */home/armin/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/armin/.fzf/bin"
fi

source <(fzf --zsh)
