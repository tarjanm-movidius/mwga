#!/bin/bash

# export PATH=`sed "s/\/xbin:/\/Program Files\/Git\/usr\/bin:/" <<< $PATH`

if [ -e /bin ]; then
	# git bash run from 'Program Files/Git/usr/bin'
	export PATH="/usr/bin:$PATH"
else
	# git bash run from xbin
	export PATH="/Program Files/Git/usr/bin:$PATH"
fi
which nev.exe >/dev/null 2>/dev/null && nev.exe
cd
