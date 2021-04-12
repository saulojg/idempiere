#!/bin/sh

# Author Saulo Gil <saulo.gil@orbital.com.ar>

for i in $(ls *.sql | egrep -v "^checkpoint.*" | sort );
do
	if [ -e checkpoint.$i ];
	then
		continue;
	fi;
	echo executing $i
        psql --single-transaction -f $i $*
        if [  $? -ne 0 ];
        then
                echo "failed at $i";
                exit;
        fi;
	touch checkpoint.$i
done;

