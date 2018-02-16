# Setup fzf
# ---------
if [[ ! "$PATH" == */home/fbraenns/.fzf/bin* ]]; then
  export PATH="$PATH:/home/fbraenns/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/fbraenns/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/fbraenns/.fzf/shell/key-bindings.bash"

