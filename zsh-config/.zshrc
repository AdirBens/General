# Config File | Adir 07102022
# ------------------------------------------------------------------------------------------------

#########################
#   GENERAL SETTINGS    #
#########################
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# 1) Theme
#       Set name of the theme to load
#       See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# 2) Time Stamps Format
#       Uncomment the following line if you want to change the command execution time
#       stamp shown in the history command output.
#       You can set one of the optional three formats:
#       "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
#       or set a custom format using the strftime function format specifications,
#       see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"


#########################
#        PLUGINS        #
#########################
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
        git
        zsh-syntax-highlighting
        )
source $ZSH/oh-my-zsh.sh


#########################
#        ALIASES        #
#########################

source $(dirname $(gem which colorls))/tab_complete.sh

# 1) ColorLS aliases
        alias l='colorls --group-directories-first --almost-all'
        alias ll='colorls --group-directories-first --almost-all --long' # detailed list view
        alias ls='colorls --group-directories-first -lX'

# 2) .zshrc configs shourtcuts
        # Open .zshrc to be edited in VSCode
        alias change="code ~/.zshrc"

        # Re-run source command on .zshrc to update current terminal session with new settings
        alias update="source ~/.zshrc"

# 3) frequently use
        # clear
        alias c="clear"
        # add execute perms
        alias urun="chmod u+x"
        # apt update & apt upgrade
        alias aptgrade="sudo apt update && sudo apt upgrade"
        # python = python3
        alias python="python3"
        # cd to workspace
        alias work="cd ~/Documents/workspace"


#########################
#         PATHS         #
#########################

# 1) Go-Lang
if [ -d /usr/local/go/bin ]; then
        export PATH=$PATH:/usr/local/go/bin
fi

# 2) GoBuster 3.1.0
if [ -d /opt/gobuster/bin ]; then
        export PATH=$PATH:/opt/gobuster/bin
fi

# 3) Chisel 1.7.7
if [ -d /opt/chisel/bin ]; then
        export PATH=$PATH:/opt/chisel/bin
fi

# 4) BurpSuite Community
if [ -d /opt/BurpSuiteCommunity ]; then
        export PATH=$PATH:/opt/BurpSuiteCommunity
fi

# 5) HashCat 6.26
if [ -d /opt/hashcat-6.2.6 ]; then
        export PATH=$PATH:/opt/hashcat-6.2.6
fi

# 6) SqlMap-dev
if [ -d /opt/sqlmap-dev ]; then
        export PATH=$PATH:/opt/sqlmap-dev
fi
