#!/bin/sh

# This formats all the SQL files in the specified directory so that
# they can be executed by SQL*Plus. There are two modes -- a 'testing'
# mode (the default mode -- this strips out all the "commit" statements)
# and a commit mode for deployment. You need to pipe the output of this
# script into sqlplus, for example:
# ./migrate.sh 313-314 commit | sqlplus adempiere/adempiere

# Contributed by Chris Farley - northernbrewer

# CarlosRuiz - added multidirectory management 2008/02/20

if [ -z "$1" ]; then
   echo "Usage: $0 [DIRECTORY ... DIRECTORY] [commit]"
   exit 0
fi
echo "SET SQLBLANKLINES ON"
echo "SET DEFINE OFF"
echo "SPOOL `basename $1`"
DIRINI=$1
COMMIT=0
while [ $# -gt 0 ]
do
    DIR=$1
    shift
    if [ "$DIR" = "commit" ]; then
       COMMIT=1
    else
        for file in $DIR/*.sql; do
           echo "SELECT '`basename $file`' AS Filename FROM dual;"
           cat $file | dos2unix | sed 's/commit[ ]*;//I'
           echo
        done
    fi
done
if [ -d $DIRINI/../processes_post_migration ]
then
   for file in $DIRINI/../processes_post_migration/*.sql; do
      echo "SELECT '`basename $file`' AS Filename FROM dual;"
      cat $file | dos2unix | sed 's/commit[ ]*;//I'
      echo
   done
fi
if [ -d $DIRINI/../my_processes_post_migration ]
then
   for file in $DIRINI/../my_processes_post_migration/*.sql; do
      echo "SELECT '`basename $file`' AS Filename FROM dual;"
      cat $file | dos2unix | sed 's/commit[ ]*;//I'
      echo
   done
fi
if [ $COMMIT -eq 1 ]
then
    echo "COMMIT;"
else
    echo "ROLLBACK;"
fi
echo
echo "quit"