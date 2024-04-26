# Terminal Setup

## iTerm2

[https://iterm2.com/](https://iterm2.com/)

Better terminal

Install with Homebrew

```shell
brew install --cask iterm2
```

## oh my zsh

[https://ohmyz.sh/](https://ohmyz.sh/)

Framework for managing Zsh configuration

Install with curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## bat

[https://github.com/sharkdp/bat](https://github.com/sharkdp/bat)

Better cat, adds syntax highlighting and such

Install with Homebrew

```shell
brew install bat
```

## eza

Better ls, customize columns and format

[https://github.com/eza-community/eza](https://github.com/eza-community/eza)

Install with Homebrew

```shell
brew install eza
```

## aliases

Create a local copy of the [.shell-aliases](./.shell-aliases) file in this repo

Then add this to your `.zshrc` file:

```shell
# Custom aliases
source ~/.shell_aliases
```
