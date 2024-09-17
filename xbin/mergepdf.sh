#!/bin/bash

ROTATE="east"	# default for pdfs printed from M$ photos
case "$1" in
	"-0")	ROTATE="north" && shift;;
	"-90")	ROTATE="east" && shift;;
	"-180")	ROTATE="south" && shift;;
	"-270")	ROTATE="west" && shift;;
esac
[ $# -lt 2 ] && echo "Error: Parameter missing.
Usage: $0 [rotate] <output.pdf> <input1.pdf [input2.pdf [input3.pdf [...]]]>" && exit 1

OUT_PDF="$1"
shift
INPUTLIST=""
OUTPUTLIST=""
for l1 in {' ',{A..Z}}; do
	[ $# -lt 1 ] && break
	for l2 in {A..Z}; do
		[ $# -lt 1 ] && break
		INPUTLIST="$INPUTLIST $l1$l2=\"$1\""
		OUTPUTLIST="$OUTPUTLIST $l1$l2$ROTATE"
		shift
	done
done
PDFTK_CMD=`tr -s ' ' <<< "pdftk $INPUTLIST cat $OUTPUTLIST output \"$OUT_PDF\""`
echo "# $PDFTK_CMD"
eval "$PDFTK_CMD"
exit $?
