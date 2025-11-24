mkdir -p "$HOME/.config"
stow --dotfiles --restow --target="$HOME" --dir="$HOME/dotfiles" --stow home

