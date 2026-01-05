# Zsh

Install everything directly using `zsh-setup.sh`.

## [ohmyzsh](https://ohmyz.sh/)

### Instalation

- Install with curl
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install with wget

``` shell
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

## Theme

```shell
ZSH_THEME="jonathan"
```

## Plugins

```shell
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)
```

Requires installation of:
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)

## Aliases
- `update` - Updates all pacman and yay packages. <br/>

    ```shell
    alias update='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'
    ```
- `autoremove` - Removes pacman and yay Orphan packages. <br/>

    ```shell
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
    ```