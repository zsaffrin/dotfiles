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

## aliases

Create a local copy of the [.shell_aliases](./.shell_aliases) file in this repo

Then add this to your `.zshrc` file:

```shell
# Custom aliases
source ~/.shell_aliases
```

## oh my zsh

[https://ohmyz.sh/](https://ohmyz.sh/)

Framework for managing Zsh configuration

Install with curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
