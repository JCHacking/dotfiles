_default: apply

[doc('Apply Dotfiles')]
apply:
    @echo "⚙ Applying dotfiles..."
    @dotter deploy --verbose
    @echo "------------------------------------------"
    @echo "Dotfiles applied successfully ✅"

[doc('Update Dotfiles')]
update: && apply
    @echo "🚀 Updating dotfiles..."
    @git pull --verbose
    @echo "Dotfiles updated successfully ✅"

[doc('Unapply Dotfiles')]
unapply:
    @echo "🗑 Unapplying dotfiles..."
    @dotter undeploy --noconfirm
    @echo "------------------------------------------"
    @echo "Dotfiles unapplied successfully ✅"

