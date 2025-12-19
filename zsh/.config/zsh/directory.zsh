# Auto Pushd
## Limit
DIRSTACKSIZE=20

## Alias
alias dirs="dirs -v" # Print directories stack with number of position

## Options
setopt AUTO_PUSHD        # Automatic add directory to pushd stack
setopt PUSHD_IGNORE_DUPS # Remove duplicates
setopt PUSHD_MINUS       # Revert the + and - operators
setopt PUSHD_SILENT      # Not show the directory when use popd
