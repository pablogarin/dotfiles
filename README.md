# Stow config

Restore configs by using `stow`.

## Install stow

### Debian
`sudo apt install stow`

### MACOS
`brew install stow`

NOTE: Dunst, Polybar, Picom, Rofi and i3 will never work on MACOS. This is mainly for Wezterm, starship, tmux, vim and ZSH.

## Stow config

It's best to add a `.stowrc` file with the target home directory.

```
target=/home/user
```

### EZ stowrc file

```sh
echo "target=$HOME" > .stowrc
```


