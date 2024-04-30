# OSX Setup

System install and setup preferences for Mac OSX

## Homebrew

First install [Homebrew](https://brew.sh/)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Copy the [Brewfile](Brewfile) from this repo to local directory. Then run:

```shell
brew bundle install --file /path/to/Brewfile
```

This will install the following:

- **Fonts**
  - [Monaspace (Nerd Font)](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Monaspace) - preferred Terminal font ('MonaspiceNe Nerd Font Mono')
- **Packages**
  - All the CLI utilities listed in the [terminal-setup](terminal-setup.md) guide
- **Applications**
  - [1Password](https://1password.com/) - Password manager
  - [Google Chrome](https://www.google.com/chrome/) - Browser
  - [iTerm2](https://www.iterm2.com/) - Terminal
  - [Maccy](https://maccy.app/) - Clipboard manager
  - [Parsify](https://parsify.app/) - Notepad format calculator
  - [Rectangle](https://rectangleapp.com/) - Window manager
  - [Spotify](https://www.spotify.com/) - Music player
  - [VSCode](https://code.visualstudio.com/) - IDE and code/text editor
  - [zoom](https://www.zoom.us/) - Video conferencing
- **Plugins**
  - All the VSCode plugins listed in the [vscode-setup](vscode-setup.md) guide

## Node.js

Node should be installed and managed using NVM (Node Version Manager)

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
