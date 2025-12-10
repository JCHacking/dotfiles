apps := "alacritty bat cargo delta git google-chrome gpg imv lazygit lsd mako nvim podman spotify ssh starship sway sworkstyle waybar wofi xdg zsh"

_default: apply

[doc('Apply Dotfiles')]
apply:
    @echo "⚙ Applying dotfiles for: {{ apps }}..."
    @stow --verbose --target={{ home_directory() }} --restow {{ apps }}
    @echo "------------------------------------------"
    @echo "Dotfiles applied successfully ✅"

[doc('Unapply Dotfiles')]
unapply:
    @echo "🗑 Unapplying dotfiles for: {{ apps }}..."
    @stow --verbose --target={{ home_directory() }} --delete {{ apps }}
    @echo "------------------------------------------"
    @echo "Dotfiles unapplied successfully ✅"

[doc('Update Dotfiles')]
update: unapply && apply
    @echo "🚀 Updating dotfiles..."
    @git pull
    @echo "Dotfiles updated successfully ✅"

