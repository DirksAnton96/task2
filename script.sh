#!/bin/bash

mkdir -p /tmp/repo1/task1

cd /tmp/repo1/task1

git clone git@github.com:DirksAnton96/task2.git

cd ./task2

var=$(git describe)

x=$(expr length $var)

if (($x>4));
then a=$(echo ${var:1:3})
x=$(echo "${a: -1}"); 
x=$(($x+1))
b=$(echo "${var:0:3}")
c=$(echo $b$x)

git tag -a $c -m " my new tag "
git push origin $c

cd /tmp/repo1/task1

else echo "No changes!!" /tmp/repo1/task1;
fi

rm -rf /tmp/repo1/task1/task2


