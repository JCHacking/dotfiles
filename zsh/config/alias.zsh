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

# Add ssh aliases
alias ssh-nosec="ssh -o 'StrictHostKeyChecking=no' -o 'UserKnownHostsFile=/dev/null' -o 'LogLevel=ERROR'"
alias sftp-nosec="sftp -o 'StrictHostKeyChecking=no' -o 'UserKnownHostsFile=/dev/null' -o 'LogLevel=ERROR'"

# Alias for task (Because go-task rename binary name)
alias task="go-task"

# Alias for AI
alias claude-costs="npx --yes ccusage@latest"
alias opencode-costs="npx --yes @ccusage/opencode@latest"
