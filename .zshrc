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
