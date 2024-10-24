#!/bin/bash

DBG=1
[ -d "/c/xbin" ] && PRGDIR="/c/xbin" || PRGDIR="/xbin"
[ -d "$TMP" ] || TMP="$TEMP"
PAUSEFILE="$PRGDIR/kill.not"
SHITLISTFILE="$PRGDIR/kill.lst"
LCKFILE="$TMP/`basename $0`-$RANDOM"
SHITLIST=""
PIDLIST=""

DBGFLAG=""
DBGECHO="true"
[ "$DBG" == "1" ] && DBGFLAG="//V" && DBGECHO="echo"

[ ! -e "$SHITLISTFILE" ] && echo "Error: '$SHITLISTFILE' doesn't exist" && exit 1

function update_shitlist() {
	SHITLIST="`grep -v '^#\|^$' $SHITLISTFILE | sed -e ':a;N;$!ba;s/\n/\\\|/g'`"
	$DBGECHO "Lista actualizada"
	touch "$LCKFILE"
}

function kill_relentless_shit() {
	[ -z "$1" ] && return 1
	if grep -qi "${1}.exe" <<< $PIDLIST; then
		$DBGECHO ""
		PIDLIST="`grep -vi "${1}.exe" <<< $PIDLIST`"
		while tskill "$1" //A $DBGFLAG; do
			echo -n ""
		done
	fi
}

function kill_service_by_pid() {
	[ -z "$1" ] && return 1
	PID="`sc queryex $1 | sed -n 's/.*PID[: \t]\+\([0-9]\+\)[^0-9]*$/\1/p'`"
	[ -n "$PID" -a "$PID" != "0" ] && $DBGECHO "matando s$PID" && tskill $PID //A $DBGFLAG
}

while true; do
	[ -e "$PAUSEFILE" ] && sleep 1 && echo "pause" && continue
	[ "$LCKFILE" -nt "$SHITLISTFILE" ] 2>/dev/null || update_shitlist
	PIDLIST=`tasklist //SVC //FO CSV | grep -w "$SHITLIST"`
	if [ -n "$PIDLIST" ]; then
		$DBGECHO -n "$PIDLIST"
		# kill_relentless_shit "msedgewebview2"
		# kill_relentless_shit "TextInputHost"
		# if grep -qi "TextInputHost.exe\|msedgewebview2.exe" <<< $PIDLIST; then
			# $DBGECHO ""
			# grep -qi "TextInputHost" <<< $PIDLIST && ( for i in `seq 1 120`; do tskill "TextInputHost" //A $DBGFLAG; done ) &
			# while tskill "msedgewebview2" //A $DBGFLAG; do
				# true
			# done
			# PIDLIST="`grep -vi "TextInputHost.exe\|msedgewebview2.exe" <<< $PIDLIST`"
		# fi
		if grep -qi "TextInputHost.exe" <<< $PIDLIST; then
			$DBGECHO ""
			grep -qi "TextInputHost" <<< $PIDLIST && ( for i in `seq 1 120`; do tskill "TextInputHost" //A $DBGFLAG; done ) &
			PIDLIST="`grep -vi "TextInputHost.exe" <<< $PIDLIST`"
		fi
		if grep -qi "StartAllBackCfg.exe" <<< $PIDLIST; then
			taskkill //F //T //IM Microsoft.AAD.BrokerPlugin.exe
		fi

		PIDLIST=`sed 's/^[^,]\+,\"\([^"]\+\)\".*/\1/' <<< $PIDLIST`
		#RET=$?
		#[ $RET -gt 0 ] && echo "ret $RET"
		if [ -n "$PIDLIST" ]; then
			$DBGECHO ""
			for i in $PIDLIST; do
				$DBGECHO "matando $i"
				tskill $i //A $DBGFLAG || taskkill //T //F //PID $i
			done
			$DBGECHO "matando WMI"
			tskill WmiPrvSE //A $DBGFLAG
		fi
	else
		net stop DoSvc 2>/dev/null
		net stop UsoSvc 2>/dev/null
		net stop WaaSMedicSvc 2>/dev/null
		kill_service_by_pid TextInputManagementService
		read -t 5
	fi
done
rm "$LCKFILE"
