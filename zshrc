source ~/.profile


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/Users/tpoterba/anaconda2/bin:$PATH"
export PATH="$PATH:/Users/tpoterba/scala-2.11.8/bin/"
export PATH="$PATH:$SPARK_HOME/bin"
export PATH="$PATH:$JAVA_HOME/bin:$PYTHONPATH"
export PATH="/Users/tpoterba/google-cloud-sdk/bin:$PATH"
export PATH="$PATH:/Users/tpoterba/bin/"

# source '/Users/tpoterba/google-cloud-sdk/path.bash.inc'
source ~/.iterm2_shell_integration.`basename $SHELL`

# Path to your oh-my-zsh installation.
export ZSH=/Users/tpoterba/.oh-my-zsh

# load fonts
source ~/.fonts/*.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_TIME_BACKGROUND='black'
POWERLEVEL9K_TIME_FOREGROUND='green'

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "
POWERLEVEL9K_STATUS_CROSS=true

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time status_joined dir vcs)

ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx sublime)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacs'
else
  export EDITOR='emacs'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias update="git checkout master && git fetch bi && git merge bi/master"
alias gradle="gradle --daemon"
alias zsrc="source ~/.zshrc"
alias zedit="st ~/.zshrc"
alias lc="colorls"
alias cain="/Users/tpoterba/cain/build/install/cain/bin/cain"
alias editrc="subl ~/.zshrc"
alias sv="git stash && git stash apply"
alias ip="ipython --profile hail --no-confirm-exit"
alias gs="git reflog | python ~/learning/gitstack/gitstack.py"
alias grc='rg "<<<<<<<" || (git add -u && git rebase --continue)'
alias qq='terminal-notifier -title "Terminal" -message "Done with task!"'
alias mk='gradle shadowJar && terminal-notifier -sound "default" -timetle "gradle shadowJar" -message "Build SUCCESS!" || terminal-notifier -sound "Basso" -title "gradle shadowJar" -message "Build FAILED!"'
alias rc="python ~/misc/sampler.py"
alias lg="lazygit"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source activate hail
