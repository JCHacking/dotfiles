if [ -r ~/.cache/p10k-instant-prompt-${(%):-%n}.zsh ]; then
    source ~/.cache/p10k-instant-prompt-${(%):-%n}.zsh
fi

if [ ! -d ~/.cache/zsh ]; then
    mkdir -p ~/.cache/zsh
fi

source ~/.config/zsh/alias.zsh
source ~/.config/zsh/completion.zsh
source ~/.config/zsh/directory.zsh
source ~/.config/zsh/history.zsh
source ~/.config/zsh/key-binding.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
if [ "${TERM}" != "linux" ]; then
    source ~/.config/zsh/powerlevel10k.zsh
else
    source ~/.config/zsh/powerlevel10k-without-gui.zsh
fi
