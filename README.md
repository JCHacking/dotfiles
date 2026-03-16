# dotfiles

These are my personal dotfiles for my computers.

I am uploading them in case they can serve as inspiration to someone, but I do not recommend using them directly as they contain personal settings such as my name, email, username, etc.

## Screenshots

![Screenshot](screenshot.png)

## Setup

Managed with [dotter](https://github.com/SuperCuber/dotter), deployed via [just](https://github.com/casey/just).

```bash
just apply    # Deploy dotfiles
just update   # Pull latest changes + apply
just unapply  # Remove deployed dotfiles
```

Machine-specific config lives in `.dotter/`.

## Stack

| Category | Tools |
|---|---|
| Shell | zsh + starship |
| Terminal | alacritty |
| Editor | neovim |
| Window Manager | sway + waybar, wofi, mako, swaylock, sworkstyle |
| Git | git + delta |
| CLI | bat, lsd, fd, ripgrep, zoxide, direnv |
