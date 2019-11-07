source ~/.profile

export EDITOR="vim"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

unsetopt AUTO_CD

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$PATH:/Users/tpoterba/anaconda3/bin"
export PATH="$PATH:/Users/tpoterba/scala-2.11.8/bin/"
export PATH="$PATH:$SPARK_HOME/bin"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="/Users/tpoterba/google-cloud-sdk/bin:$PATH"
export PATH="$PATH:/Users/tpoterba/bin/"
# export HAIL_SPARK_MONITOR=1

export HAIL_TWINE_CREDS_FOLDER="/Users/tpoterba/.hail-pypi-creds"

export PYTEST_ARGS="--color=yes -vv"

# source '/Users/tpoterba/google-cloud-sdk/path.bash.inc'
source ~/.iterm2_shell_integration.`basename $SHELL`

# Path to your oh-my-zsh installation.
export ZSH=/Users/tpoterba/.oh-my-zsh

# load fonts
# source ~/.fonts/*.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_TIME_BACKGROUND='black'
POWERLEVEL9K_TIME_FOREGROUND='green'

POWERLEVEL9K_DIR_BACKGROUND='blue'

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "
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
plugins=(git osx)

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
alias st="subl"
alias rb="git fetch bi && git rebase bi/master"
alias update="git checkout master && git fetch bi && git merge bi/master"
alias gradle="gradle --daemon"
alias zsrc="source ~/.zshrc"
alias zedit="subl ~/.zshrc"
alias editrc="subl ~/.zshrc"
alias sv="git stash && git stash apply"
alias ip="PYTHONPATH="$HAIL_HOME/python:$PYTHONPATH" ipython --profile hail --no-confirm-exit"
alias jp="PYTHONPATH="$HAIL_HOME/python:$PYTHONPATH" jupyter notebook"
alias gs="git reflog | python ~/learning/gitstack/gitstack.py"
alias grc='rg "<<<<<<<" || (git add -u && git rebase --continue)'
alias qq='terminal-notifier -title "Terminal" -message "Done with task!"'
alias mk='gradle shadowJar && terminal-notifier -sound "default" -timetle "gradle shadowJar" -message "Build SUCCESS!" || (terminal-notifier -sound "Basso" -title "gradle shadowJar" -message "Build FAILED!" && return 1)'
alias rc="python ~/misc/sampler.py"
alias lg="lazygit"
alias score="open https://www.hail.is/tools/pr-scorecard.html"
alias k="kubectl"

function cleanlogs () {
	LOGS=`find /Users/tpoterba/hail \( -name "hail*.log" -o -name "hs_err*.log" \)`
	N=`echo $LOGS | grep -v '^$' | wc -l | tr -d ' '`
	echo "Found $N logs to clean up."
	HIGH_SCORE=`cat ~/.log_high_score | cut -f1`
	if [ "$N" -gt "$HIGH_SCORE" ]; then
		echo "New high score! Previous high score was $HIGH_SCORE, on $(cat ~/.log_high_score | cut -f2)"
		printf "$N\t$(date)" > ~/.log_high_score
	else
		echo "High score is $HIGH_SCORE logs: $(cat ~/.log_high_score | cut -f2)"
	fi
	for LOG in `echo $LOGS`; do rm $LOG; done
}

function bump() {
	if [ -z "$1" ]; then
		git commit --allow-empty -m "bump!" && git push
		return 0
	else
		BRANCH="$1"
	fi

	git worktree add /tmp/hail-temp/ $BRANCH && \
	pushd /tmp/hail-temp/ && \
	git commit --allow-empty -m "bump!" && \
	git push && \
	popd && \
	git worktree remove /tmp/hail-temp && \
	git worktree prune
}

function pr() {
	USERNAME=tpoterba
	CURRENT_BRANCH=`git branch | grep \* | cut -d ' ' -f2`
	git diff-index --quiet HEAD -- && \
	git push -f --set-upstream origin $CURRENT_BRANCH && \
	open https://github.com/$USERNAME/hail/pull/new/$CURRENT_BRANCH
}

alias hd="PYTHONPATH='' hailctl dataproc"
alias hdl="PYTHONPATH=/Users/tpoterba/hail/hail/python/ hailctl dataproc"

alias dodeploy="cleanlogs && gradle deploy"

alias fixlinks='pbpaste | sed -E "s/\(hail\#([0-9]+)\)/(\[#\1](https:\/\/github.com\/hail-is\/hail\/pull\/\1))/g" | pbcopy'

alias make="gmake"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source activate hail

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tpoterba/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/tpoterba/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tpoterba/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/tpoterba/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
source /Users/tpoterba/misc/zaw/zaw.zsh

