# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Ubuntu on Mac6,2
# remap keyboard
# xmodmap ~/.xmodmapping
# remap touchpad
# synclient ClickFinger3=2 # three finger click off
# synclient TapButton3=2 # three finger touch off
# touch sensitivity
# synclient -l | grep -i palm
# synclient PalmDetect=1
# PalmMinWidth=xx PalmMinZ=yy
# Turn off the optical sound
# amixer set IEC958 off

alias vi="vim"
alias zshconfig="vi ~/.zshrc"
alias chrome="open -a Google\ Chrome"

alias notes='cd ~crunchy/SparkleShare/notes'
alias entry='vim entry_$(date +"%m-%d-%Y_%T").md'

# opens last modified file in directory
alias recent='vi `ls -tr | tail -1`'

alias mycode='cd ~crunchy/Documents/srv/code/'

# add sproutsocial stuff
source ~/Documents/usr/scripts/sproutsocial/actions.sh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cp hg)

# Use vim mode on the command line
bindkey -v
# make sure ctrlR still works
bindkey ‘^R’ history-incremental-search-backward

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH=/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Chromium dev tools
#export PATH="$PATH":`pwd`/depot_tools

# Ack ignore per directory files
export ACKRC=".ackrc"

# Add some keyboard movement to the command line
bindkey -e
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
