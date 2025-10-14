modules := "alacritty bat delta git google-chrome gpg imv lsd nvim spotify ssh sway sworkstyle waybar wofi xdg zsh"

default: apply

apply:
    @echo "⚙ Applying dotfiles for: {{ modules }}..."
    @stow --verbose --target={{ home_directory() }} --restow {{ modules }}
    @echo "------------------------------------------"
    @echo "Dotfiles applied successfully ✅"

unapply:
    @echo "🗑 Unapplying dotfiles for: {{ modules }}..."
    @stow --verbose --target={{ home_directory() }} --delete {{ modules }}
    @echo "------------------------------------------"
    @echo "Dotfiles unapplied successfully ✅"

update: unapply && apply
    @echo "🚀 Updating dotfiles..."
    @git pull
    @echo "Dotfiles updated successfully ✅"

