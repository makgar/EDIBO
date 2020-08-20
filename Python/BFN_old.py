#!/usr/bin/python3.6

print("Input a number")
#There are 3 actions in the row below - value input, value conversion, value assignment
#argument = input()
#int(argument)
#a = int(argument)
#Executing int(input()) "without trials" might result in program crash
#Therefore we will use try ... except ... finally construct
a=int(input())
if (type(a) == int): #works, but not really needed because we convert value to int in the row above
#if isinstance(a, int): #-||- (same as previous row)
#if (a == int): #doesn't work
	print(a**100)
	print("Complete")
print("This text is outside the if block, so it prints all the time!")
