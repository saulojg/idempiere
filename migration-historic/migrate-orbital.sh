#!/bin/sh

# Author Saulo Gil <saulo.gil@orbital.com.ar>

for i in $(ls *.sql | sort );
do
        psql --single-transaction -f $i $*
        if [  $? -ne 0 ];
        then
                echo "failed at $i";
                exit;
        fi;

done;

