# .bashrc

# NOTE: Bash set some defaults path on startup: /usr/share/bash-completion/bash_completion
#       We want to disable "/usr/local/bin"
newpath="`echo ${PATH} | sed 's@/usr/local/@/usr/@g'`"
PATH="${newpath}"
#echo PATH=${PATH}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
umask 000

# User specific aliases and functions

######## FOR root login:
id | grep root > /dev/null
if [ "$?" = "0" ]
then
        PROMPT="#"
else
        PROMPT="$"
fi
#PS1=`hostname`"<\$PWD>\n--------------------------------------------\n$ "
PS1="<`hostname`>""\n< \$PWD >\n_________________________________________________________________________\n${PROMPT} "
#pwd | sed 's/^\(........\).*\(..........\)/\1...\2/'`

EDITOR=vi

# for stupid systemd:
export SYSTEMD_PAGER=


