# EDIBO
EDIBO projekta elektroniskā klade

[teleci.lv](http://teleci.lv/) > SAKAI 2019 - place where we communicate  
[Trainer's Repository](https://github.com/tatusmatrix/EDIBO)  

For my own convenience [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax) on GitHub  

## General information
We're working with Linux (Ubuntu v18.04)  
[Installing Visual Studio Code on Linux](https://code.visualstudio.com/docs/setup/linux)  
[Installing snap, if missing](https://snapcraft.io/docs/installing-snap-on-ubuntu)  

### Virtualization
We could use software in order to have Linux installed on home PCs  

Take note of the following options:  
- VirtualBox
- WSL (Windows Subsystem for Linux)

Additionally, consider installing **Windows Terminal**

## Day 01
### Topics:
- Terminal (hot-keys)
- Bash (basics)

#### Terminal (hot-keys)
- Ctrl + Alt + t    — open new terminal window
- Ctrl + Shift + t  — open new tab
- Ctrl + Shift + q  — close terminal window
- Ctrl + Shift + w  — close the tab
- Ctrl + Shift + +  — zoom in
- Ctrl + -          — zoom out
- Ctrl + l          — same as typing ***clear*** (note, that's a small L there **<**)

#### Bash (basics)
- PS1="_symbol or string_" - prompt string 1. Modifies the prompt string for the current shell session
- echo _literally anything_ - display a line of text
- a=1 - define variable _a_ with value _1_
- $a - _$_ is the convention according to which we can reference our variables
- _echo_ $((a+b)) - _$(())_ defines that the content inside the round brackets is a mathematical operation
- pwd - _print working directory_. Show current location in the directory tree)
- man _command_ - show manual for the _command_
- ls - list content of the directory
- mkdir - make a new directory
- rmdir - remove a directory
- cd - change directory. **cd -** returns to previous location
- \> - output to file
- \>> - concatenate to file
- cat - concatenate and print to standard output
- head - output the first part of the file
- tail - output of the last part of file
- more - file perusal filter for crt viewing
- less - opposite of more
- cp copy. For example, _cp a.txt b.txt_ - copy a.txt to b.txt
- date - print or set machine date and time
- cal - displays a calendar
- _echo_ $0 - _$0_ is the argument zero, which is one of the Bash special parameters. $0 expands to the name of the shell or shell script
- whoami - print effective user id
- who - show who is logged on
- last - show a listing of last logged in users
- ~ - alias of user's home dir
- tree - list contents of directories in a tree-like format
##### Arithmetic operators
\+  
\-  
\*  
\/ - whole number after dividing one number by another  
\% - modulo (remainder after dividing one number by another)  

## Day 02
### Topics:
- Bash (basics)
- Git (basics)
- ASCII table

#### Bash (basics)
- _process_name_ & - putting an & separated from a command with a whitespace would launch the command in background, which in turn allows to continue using the current instance of the terminal
- jobs - displays status of jobs
- disown - remove jobs from current shell instance
- [file/dir permissions](https://www.tutorialspoint.com/unix/unix-file-permission.htm)
- hexdump - ASCII, decimal, hexadecimal, octal dump
- nano - text editor
- vim - text editor
- history - show shell history
- mv - move
- whereis _command_ - locate the binary, source and manual page files for a _command_
- chmod - change mode
- echo $PATH - print the content of a variable. In this case system variable $PATH
- PATH=$PATH - update a value of a variable with itself and then whatever you need. For example, PATH=$PATH:~/EDIBO
##### To execute a script either:
- specify full path (you can use ~ and other wildcards)
- be in the same dir as the script and use ***./file.ext*** or ***. file.ext***

#### Git (basics)
- README.md - a set of useful information about a project, if it's up to date 
- git clone URL - clone a repo to local FS from URL
- git config --global user.email email@domain.com - 
- git add - add file contents to the index. _git add ._ will add everything in the current directory
- git commit -m "-m is the change block name or a message inside these quotes, if you want to call it that" - 
- git push origin master - update remote refs along with associated objects. In this came branch master of origin
- git remote show origin - shows info about remote repo. In this case origin

#### ASCII table
[ASCII table](http://www.ecowin.org/ascii.htm) - ASCII is American Standard Code for Information Interchange

## Day 03
### Topics
- Bash (basics)
- Loops
- Positioning systems (decimal, hexadecimal, binary)
- UTF-8
- ...
