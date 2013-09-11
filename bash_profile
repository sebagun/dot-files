#########################
# ENVIRONMENT VARIABLES #
#########################

export GRAILS_HOME=$HOME/soft/grails-1.3.7
export PATH=$PATH:/usr/local/sbin:$HOME/bin:$GRAILS_HOME/bin

# MELI's environment variables that I cannot make public on GitHub! MELI_USER, MELI_PASS, MELI_DEPT, DEPT
source ~/meli-env.sh

# MacPorts Installer addition on 2013-01-11_at_12:07:12: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

##############################
# APPS TO EXECUTE AT STARTUP #
##############################

# memcached
if [ -z "$(pgrep memcached)" ]
then
	memcached -d -m 256 -l 127.0.0.1 -p 11211
fi

# redis
if [ -z "$(pgrep redis)" ]
then
	$HOME/soft/redis-2.6.8/src/redis-server &
fi

# development mockups
#node $HOME/repos/mpsitetool-components/mock/server.js > /dev/null 2> /dev/null &
#cd $HOME/repos/auth-oauth_frontend_mocks; node index.js > /dev/null 2> /dev/null &
#cd

###########
# ALIASES #
###########

alias vi='vim'
alias ls='ls -lahG'
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias query_ow='sh q.sh'
alias robin='ssh sgun@172.16.0.20'
alias batman='ssh -t sgun@10.100.41.3'
alias gitk='gitk > /dev/null 2> /dev/null'
alias server='python -m SimpleHTTPServer'

################
# APPS TUNNING #
################

# Autocomplete for git
source ~/.git-completion.bash
source ~/.git-prompt.sh

# To prevent git from prompting me for a commit message on automatic merges
export GIT_MERGE_AUTOEDIT=no

# Git branch name in the prompt. See http://en.wikipedia.org/wiki/Tput
green=$(tput setaf 2)
purple=$(tput setaf 5)
red=$(tput setaf 1)
yellow=$(tput setaf 3)
bblue=$(tput setab 4)
reset=$(tput sgr0)
PS1='\[$yellow\]\u\[$red\]@\[$green\]\h\[$reset\]:\w\[$purple\]\[$bblue\]$(__git_ps1)\[$reset\] \$ '

