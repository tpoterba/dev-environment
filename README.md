# Tools I use

### Sublime text

Text editor.

https://www.sublimetext.com

### iterm2

Terminal.

https://www.iterm2.com/


### zsh

https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

OSX comes with a decently recent zsh now (5.3 in mid-2018)

```
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

https://github.com/robbyrussell/oh-my-zsh

Also see given `.profile` and `.zshrc` files

#### Powerline fonts

Use `14pt Meslo LG S DZ Regular for Powerline`
https://github.com/powerline/fonts
https://github.com/FortAwesome/Font-Awesome/blob/master/use-on-desktop/Font%20Awesome%205%20Free-Regular-400.otf
https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf

#### ZSH syntax highlighting

https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

```
brew install zsh-syntax-highlighting
```

### Spectacle

Window manager / resizer.

https://www.spectacleapp.com/

Bind left half and right half to ctrl-option-command L/R
Next  display to ctrl-option-command-UP
Leave center/maximize, delete the rest

### Karabiner

Key rebinding.

https://pqrs.org/osx/karabiner/

Plus:

```
defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15
defaults write -g KeyRepeat -float 1.3 # normal minimum is 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -float 1.3
```

(requires logout/login)

### Flux

Don't go blind.

https://justgetflux.com/

4800K daylight

### Homebrew

OSX package manager. This install is very unsafe, but don't know a better way.

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Ripgrep
Great grep program (`rg`)

```
brew install ripgrep
```

### wget

Command-line downloader.

```
brew install wget
```

### Anaconda

Python installation and package manager

https://www.anaconda.com/download/#macos
(use hail dev environment)


### iStats

See if your mac is about to explode

```
gem install iStats
```

### Glances

See why your mac is about to explode

```
pip install glances
```

### Terminal Notifier

Used with aliases for terminal notifications.

```
brew install terminal-notifier
```

### Jupyter extensions
https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/install.html#install-the-python-package

### IntelliJ

IDE

https://www.jetbrains.com/idea/
(config in repo)

### Zulip

Chat app

https://zulipchat.com/apps/mac

### Slack

Chat app

https://slack.com/downloads/osx