# Terminal Setup

## Installs

_Note: These should already be installed if you used the Brewfile approach described in the [osx-setup](osx-setup.md) guide_

### iTerm2

[https://iterm2.com/](https://iterm2.com/) - Better terminal

```shell
brew install --cask iterm2
```

### Packages

- [bat](https://github.com/sharkdp/bat) - Better cat
- [eza](https://github.com/eza-community/eza) - Better ls

Install all with:

```shell
brew install bat && brew install eza
```

## zsh shell config

> First ensure zsh is installed and set as the default shell on the system

Place (or replace) the following files from this repo to the local system:

- [.zshrc](./.zshrc) - zsh config
- [.p10k.zsh](./.p10k.zsh) - Powerlevel10k config
- [.shell_aliases](./.shell_aliases) - Aliases

Once these are in place, reload zsh with

```shell
source ~/.zshrc
```
