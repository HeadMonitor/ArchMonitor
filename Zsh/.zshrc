# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jonathan"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)

# User configuration
alias update='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'

autoremove()  
{
  local orphans

  orphans=$(pacman -Qdtq)
  if [[ -n "$orphans" ]]; then
    sudo pacman -Rns --noconfirm $orphans
  else
    echo "No pacman orphans to remove."
  fi

  orphans=$(yay -Qdtq)
  if [[ -n "$orphans" ]]; then
    yay -Rns --noconfirm $orphans
  else
    echo "No yay orphans to remove."
  fi
}
