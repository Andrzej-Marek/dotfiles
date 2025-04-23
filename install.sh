#!/bin/bash

echo "Linking zsh..."
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"

echo "Linking p10k..."
ln -sf "$HOME/dotfiles/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

echo "Linking oh my zsh..."
ln -sf "$HOME/dotfiles/oh-my-zsh" "$HOME/.oh-my-zsh"

echo "Linking nvim..."
mkdir -p "$HOME/.config"
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config/nvim"

echo "Linking git..."
ln -sf "$HOME/dotfiles/git/.gitconfig" "$HOME/.gitconfig"

echo "Linking tmux..."
ln -sf "$HOME/dotfiles/tmux/.oh-my-tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$HOME/dotfiles/tmux/.tmux.conf.local" "$HOME/.tmux.conf.local"

echo "Linking alacritty..."
mkdir -p ~/.config/alacritty
ln -sf "$HOME/dotfiles/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

echo "✅ Done! Reload your terminal or source the configs."
