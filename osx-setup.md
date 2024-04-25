# OSX Setup

System install and setup preferences for Mac OSX

## System

- [Homebrew](https://brew.sh/)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Fonts

### [Monaspace (Nerd Font)](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Monaspace)

```shell
brew tap homebrew/cask-fonts
brew install --cask font-monaspace-nerd-font
```

_Note: this installs into FontBook as "Monaspice"_

## Applications

### Terminal

See terminal setup guide [here](terminal-setup.md)

### [Rectangle](https://rectangleapp.com/)

Move and resize windows

```shell
brew install --cask rectangle
```

### [Maccy](https://maccy.app/)

Clipboard manager

```shell
brew install --cask maccy
```

### [NVM](https://github.com/nvm-sh/nvm)

Node.js Version Manager

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

Verify installation with

```shell
command -v nvm
```

Once installed:

```shell
nvm install node  # install latest version OR
nvm install 16    # install specific version
nvm -v            # check current version
nvm use 16        # switch to a specific version
```
