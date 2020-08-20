#!/bin/bash

for TOKEN in "$*"
do
   echo $TOKEN
done
echo "First argument with \$* $1"

for TOKEN in "$@"
do
   echo $TOKEN
done
echo "First argument with \$@ $1"
