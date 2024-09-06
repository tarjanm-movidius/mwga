#!/bin/bash

[ $# -lt 2 ] && echo "Error: Parameter missing. Usage: $0 <output.pdf> <input1.pdf [input2.pdf [input3.pdf [...]]]>" && exit 1

OUT_PDF="$1"
shift
INPUTLIST=""
OUTPUTLIST=""
for l1 in {A..Z}; do
	[ $# -lt 1 ] && break
	for l2 in {A..Z}; do
		[ $# -lt 1 ] && break
		INPUTLIST="$INPUTLIST $l1$l2=\"$1\""
		OUTPUTLIST="$OUTPUTLIST $l1${l2}east"
		shift
	done
done
PDFTK_CMD="pdftk$INPUTLIST cat$OUTPUTLIST output \"$OUT_PDF\""
echo "# $PDFTK_CMD"
eval "$PDFTK_CMD"
