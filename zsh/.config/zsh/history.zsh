# File
HISTFILE=~/.cache/zsh/history

# Limits
HISTSIZE=4096  # Limit in file
SAVEHIST=4096  # Limit in memory

# Store
setopt APPEND_HISTORY      # Add to old history, do not overwrite
setopt INC_APPEND_HISTORY  # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY       # Share history between all sessions.

# Ignore
setopt HIST_IGNORE_ALL_DUPS  # Ignore all duplicates
setopt HIST_IGNORE_SPACE     # Ignore commands beginning with a space
setopt HIST_NO_STORE         # Ignore history or fc command

# Others
setopt HIST_REDUCE_BLANKS  # Remove superfluous blanks from each command line being added to the history.
setopt HIST_VERIFY         # Do not execute immediately upon history expansion.

