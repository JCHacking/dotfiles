# Vi mode
bindkey -v
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Improve history (Up and Down)
## Up
autoload -Uz up-line-or-beginning-search
zle -N up-line-or-beginning-search

bindkey -M viins "^[[A" up-line-or-beginning-search # Arrow Up (Vim Insert)
bindkey -M viins "^[[A" up-line-or-beginning-search # Arrow Up (Vim Command)
bindkey -M vicmd "k" up-line-or-beginning-search    # k (Vim Command)

## Down
autoload -Uz down-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -M viins "^[[B" down-line-or-beginning-search # Arrow Down (Vim Insert)
bindkey -M viins "^[[B" down-line-or-beginning-search # Arrow Down (Vim Command)
bindkey -M vicmd "j" down-line-or-beginning-search    # j (Vim Command)

# Edit command in editor
autoload -Uz edit-command-line
zle -N edit-command-line

bindkey -M viins "\\C-e" edit-command-line # Ctrl+E Edit command in Editor (Vim Command)
bindkey -M vicmd "\\C-e" edit-command-line # Ctrl+E Edit command in Editor (Vim Command)
