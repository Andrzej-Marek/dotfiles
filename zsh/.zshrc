# Instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Editor
export EDITOR='nvim'
export VISUAL='nvim'

# Oh My Zsh
export DOTFILES="$HOME/dotfiles"
export ZSH="$DOTFILES/oh-my-zsh"
export ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf fzf-tab)
source "$ZSH/oh-my-zsh.sh"

# Paths
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$HOME:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias vim="nvim"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# PNPM
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# p10k config
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# Autocomplete
autoload -Uz compinit && compinit
