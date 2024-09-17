#!/bin/bash

[ -z "$USER" ] && export USER="$USERNAME"

# export PATH=`sed "s/\/xbin:/\/Program Files\/Git\/usr\/bin:/" <<< $PATH`
if [ -e /bin ]; then
	# git bash run from 'Program Files/Git/usr/bin'
	export PATH="/usr/bin:$PATH"
	[ -z "$HOME" ] && export HOME="/c/Users/$USER/"
else
	# git bash run from xbin
	export PATH="/Program Files/Git/usr/bin:$PATH"
	[ -z "$HOME" ] && export HOME="/Users/$USER/"
fi
alias ..='cd ..'
alias ...='cd ../..'
alias less='winpty less'
alias py='winpty py'

export PATH="$PATH:/c/lcc/bin"
# $MINGW_MOUNT_POINT c:\progra~1\git\mingw64...

#which nev_u.exe &>/dev/null && nev_u.exe
export TITLEPREFIX="bash "
#cd
