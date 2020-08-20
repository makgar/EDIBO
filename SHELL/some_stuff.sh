#!/bin/bash

echo $$ #The process number of the current shell. For shell scripts, this is the process ID under which they are executing
echo $0 #The filename of the current script
echo $# #The number of arguments supplied to a script
echo $n #These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on)
#$* #All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2
#$@ #All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2
echo $? #The exit status of the last command executed
echo $! #The process number of the last background command
