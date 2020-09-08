#!/bin/bash
#find ./ -name "*.sql" -type f -print0 | xargs -0 iconv -f UTF-8 -t UTF-8 > /dev/null 
var=$(git log --pretty=format: --name-only --since="2020-09-08 1:00:00" | sort | uniq)
for v in $var
do
	echo $v
	iconv -f UTF-8 -t UTF-8 < $v > /dev/null 
done
