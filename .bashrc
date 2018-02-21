# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias code='cd ~/code'
alias code.py='cd ~/code/python'
alias code.pp='cd ~/code/puppet'
alias code.puppet='code.pp'
alias code.sh='cd ~/code/bash'
alias repos='cd ~/code/repos'

alias l='clear && ls -FGlh'
alias lt='l -tr'
alias la='l -a'
alias ll='l'
alias h='clear && history'
alias c='clear'
alias svc='service'
alias etc='clear && cd /etc'
alias init.d='clear && cd /etc/init.d'
alias lsalias='clear :&& alias -p'
alias dnow='doing show currently'
alias dlater='doing show later'

# cd behavior
alias u='cd .. && l'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mount='mount |column -t'

# custom commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# vim
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# iptables
alias ipt='sudo /sbin/iptables'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# apcache
alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'

# get system stats
alias cpuinfo='less /proc/cpuinfo'
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# keychian
alias keychain='ssh agent bash'
