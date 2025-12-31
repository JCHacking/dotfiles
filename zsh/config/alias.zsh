# Ask confirmation
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Replace applications with modern alternatives
alias cat="bat"
alias diff="delta"
alias dir="ls"
alias find="fd"
alias grep="rg --no-ignore --hidden --pcre2"
alias ls="lsd --long --git"
alias tree="ls --tree"

# Replace docker to podman
alias docker="podman"
alias docker-compose="podman-compose"

# Add useful ssh aliases
alias ssh-nosec="ssh -o 'StricthostKeyChecking=no' -o 'UserKnownHostsFile=/dev/null' -o 'LogLevel=ERROR'"
