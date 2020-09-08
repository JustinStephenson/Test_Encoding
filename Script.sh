#!/bin/bash
var=$(git log --pretty=format: --name-only -- '*.sql' --since="2020-09-08 1:00:00" | sort | uniq)
for v in $var
do
	if iconv -f UTF-8 -t UTF-8 < $v > /dev/null
	then
		:
	else
		echo $v
	fi
done
