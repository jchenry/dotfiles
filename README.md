
## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```bash
xcode-select --install
```

2. Clone repo into new hidden directory.

```bash
# Use SSH (if set up)...
git clone git@github.com:jchenry/dotfiles.git ~/.config

# ...or use HTTPS and switch remotes later.
git clone https://github.com/jchenry/dotfiles.git ~/.config
```

3. run setup scripts

```bash
~/.config/scripts/acct.sh
~/.config/scripts/brew-setup.sh
~/.config/macos-defaults.sh
~/.config/bash/setup.sh
~/.config/tmux/setup.sh
~/.config/vscode/setup.sh
```
