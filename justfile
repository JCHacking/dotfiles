modules := "alacritty bat cargo delta git google-chrome gpg imv lsd mako nvim podman spotify ssh starship sway sworkstyle waybar wofi xdg zsh"

_default: apply

[doc('Apply Dotfiles')]
apply:
    @echo "⚙ Applying dotfiles for: {{ modules }}..."
    @stow --verbose --target={{ home_directory() }} --restow {{ modules }}
    @echo "------------------------------------------"
    @echo "Dotfiles applied successfully ✅"

[doc('Unapply Dotfiles')]
unapply:
    @echo "🗑 Unapplying dotfiles for: {{ modules }}..."
    @stow --verbose --target={{ home_directory() }} --delete {{ modules }}
    @echo "------------------------------------------"
    @echo "Dotfiles unapplied successfully ✅"

[doc('Update Dotfiles')]
update: unapply && apply
    @echo "🚀 Updating dotfiles..."
    @git pull
    @echo "Dotfiles updated successfully ✅"

