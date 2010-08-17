#!/bin/bash
. ./.bashrc

FILES=`find . -name ".*" -d 1 |grep -v '.git'`
for FILE in $FILES; do
	REALPATH=`realpath $FILE`
	FILENAME=`basename $REALPATH`
	DEST=~/$FILENAME
	if [ -a $DEST ]; then
		`mv $DEST $DEST.bak`
	fi
	ln -s $REALPATH ~/$FILENAME
done;
