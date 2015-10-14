# Path to your oh-my-zsh installation.
export ZSH=/Users/zhangshengqi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arrow"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

# User configuration
ANDROID_HOME="/Users/zhangshengqi/Library/Android/sdk/"
#export PATH="/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"
export PATH="/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/bin"
export PATH="${PATH}:/usr/local/bin"
export PATH="${PATH}:/usr/bin"
export PATH="${PATH}:/bin"
export PATH="${PATH}:/usr/sbin"
export PATH="${PATH}:/sbin"
export PATH="${PATH}:${ANDROID_HOME}/tools"
export PATH="${PATH}:${ANDROID_HOME}/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#cd alias
alias ..="cd ..;
l -a;"
alias 2..="cd ../..;
l -a;"
alias ro="cd /;
l -a;"
function c() {
  cd $1;
  l -a;
}


#other alias
alias al="cat ~/.zshrc"
alias mal="atom ~/.zshrc"
alias cl="clear"
alias la="ls -a"
alias rf="rm -rf"
function mk() {
  mkdir $1;
  cd $1;
}

#git alias
alias gs="git status"
alias st="git status -sb"
alias adda="git add ."
alias amend="git commit --amend"
alias gl="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

function ad() { git add "$1"; }
function commit() { git commit -m "$1"; }
function commitm() { git commit -m "[modify] $1"; }
function commita() { git commit -a -m "$1"; }
function commitft() { git commit -m "[feature] $1"; }
function commitfix() { git commit -m "[bugfix] $1"; }
function commitup() { git commit -m "[update] $1"; }
function commitpb() { git commit -m "[publish] $1"; }
function commitmw() { git commit -m "[modify][what] $1";}

alias pull="git pull origin master"
alias pullr="git pull --rebase origin master"

alias push="git push origin master"

#java alias
alias jc="javac"
alias j="java"

#launch alias
alias atom="open -a /Applications/Atom.app"
alias chrome="open -a /Applications/Google\ Chrome.app"
