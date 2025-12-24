# Create completions directory if not exists
if [ ! -d ~/.cache/zsh/completions ]; then
  mkdir ~/.cache/zsh/completions
fi

# Configure Completion
fpath=(~/.cache/zsh/completions $fpath)
autoload -Uz compinit
compinit

# Cache
zstyle ":completion:*" use-cache on                       # Enable Cache
zstyle ":completion:*" cache-path ~/.cache/zsh/completion # File

# Files
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' # Try to complete first case sensitive, then case insensitive and finally by partial match
zstyle ':completion:*' file-sort dummyvalue                                                   # Sort files alphabetically
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories      # Order directories when use cd

# Autosuggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

## Options
ZSH_AUTOSUGGEST_STRATEGY="completion" # Autosuggest based in completion
