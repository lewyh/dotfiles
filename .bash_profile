#!/bin/bash
# Connection to work
alias starssh='ssh hfarnhill@star.herts.ac.uk' 
alias uhppc27='ssh -t -t -L8081:localhost:10000 hfarnhill@star.herts.ac.uk "ssh -L10000:localhost:22 hfarnhill@uhppc27"'

SSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk -F': ' '/ SSID/ {print $2}')
if [ "$SSID" == "o2 wireless o2" ]||[ "$SSID" == "13HorsaGdns" ]; then
    # Resolve IP addresses upon opening terminal
    SERVERIP=$(arp -a | grep microserver | cut -d "(" -f2 | cut -d ")" -f1)
    JOGGLERIP=$(arp -a | grep joggler | cut -d "(" -f2 | cut -d ")" -f1)
    alias server='ssh hywel@'${SERVERIP}
    alias joggler='ssh joggler@'${JOGGLERIP}
    # In case anything changes during terminal session
    alias jogglerip='arp -a | grep joggler | cut -d "(" -f2 | cut -d ")" -f1'
    alias serverip='arp -a | grep microserver | cut -d "(" -f2 | cut -d ")" -f1'
fi

# Git shorthand
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

alias mvim='~/Software/mvim'
alias stilts='/Users/Hywel/Desktop/IPHAS/stilts.sh'

# iPlayer stuff
alias flvstreamer='/Users/Hywel/Downloads/flvstreamer_macosx_unified_binary_latest'
alias get_iplayer='/Users/Hywel/Downloads/get_iplayer-2.79/get_iplayer'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
#export PATH

PYTHONPATH="/Users/Hywel/Software/python/lib/python2.7/site-packages"
PYTHONPATH="/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:${PYTHONPATH}"
export PYTHONPATH
