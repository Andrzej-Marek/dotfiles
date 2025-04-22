#!/bin/bash

echo "Linking zsh..."
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"

echo "Linking zsh..."
ln -sf "$HOME/dotfiles/oh-my-zsh " "$HOME/.oh-my-zsh"

echo "Linking nvim..."
mkdir -p "$HOME/.config"
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config/nvim"

echo "Linking git..."
ln -sf "$HOME/dotfiles/git/.gitconfig" "$HOME/.gitconfig"

echo "Linking tmux..."
ln -sf "$HOME/dotfiles/tmux/.tmux.conf" "$HOME/.tmux.conf"

echo "Linking alacritty..."
ln -sf "$HOME/dotfiles/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"

echo "✅ Done! Reload your terminal or source the configs."
