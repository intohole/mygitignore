#!/bin/sh



PWD=$(cd `dirname $0`; pwd)
cd $PWD
[ -d "$PWD/gitignore" ] && cp ${PWD}/gitignore ${PWD}/gitignore.bak
cat $PWD/gitignore | grep -vE "^#" | awk '{a[$1] = 0}END{for(i in a){print i}}' | sort > tmp && mv tmp gitignore 
