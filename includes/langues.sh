#!/bin/bash

# langues
OPTS=$(getopt -o vhns: --long en,fr,de,ru,es,pt,ptbr -n 'parse-options' -- "$@")
eval set -- "$OPTS"
while true; do
	case "$1" in
			--en) GENLANG="en"; break ;;
			--fr) GENLANG="fr"; break ;;
			
		*|\?)
			BASELANG="${LANG:0:2}"
			# detection auto
			if   [ "$BASELANG" = "fr" ]; then GENLANG="fr"
			
			
			else
				GENLANG="fr"
			fi
			break
		;;
	esac
done

# fix langue shell root
echo "export LANG=$LANG" >> /root/.bashrc
