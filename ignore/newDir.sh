#!/bin/bash

function createSQL () {
    touch $newDir/src/$1.sql
    echo -e "-- $newDir/src/$1.sql" >> $newDir/src/$1.sql
}

function createSH () {
    touch $newDir/$1.sh
    echo -e "#!/bin/bash\n# $newDir/$1.sh" >> $newDir/$1.sh
    chmod +x $newDir/$1.sh
}

newDir=$1

mkdir $newDir
mkdir $newDir/src

createSQL "createDB"
createSQL "createTable"
createSQL "insert"
createSQL "select"

createSH "install"
createSH "connect"
createSH "createDB"
createSH "createTable"
createSH "insert"
createSH "select"