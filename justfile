_default: update

[doc('Apply Dotfiles')]
apply: _nvim-ai
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

[doc('Init nvim local AI config')]
_nvim-ai:
    @mkdir -p ~/.config/nvim/local
    @if [ ! -f ~/.config/nvim/local/ai.lua ]; then \
      cp nvim/local/ai.lua ~/.config/nvim/local/ai.lua; \
      chmod 600 ~/.config/nvim/local/ai.lua; \
      echo "Created ~/.config/nvim/local/ai.lua - edit provider/api_key/model"; \
    fi

