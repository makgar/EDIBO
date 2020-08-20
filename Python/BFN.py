#!/usr/bin/python3.6

check = False
while not check:
#while (not check): #same
#while (check==False): #pretty much the same as row above
#while (check!=True): #pretty much the same as row above
    print("Input a number:")
#There are 3 actions in the row below - value input, value conversion, value assignment
#argument = input()
#int(argument)
#a = int(argument)
#Executing int(input()) "without trials" might result in program crash
#Therefore we will use try ... except ... finally construct
    try:
        a=int(input())
        check = True
    except:
        print("The value you've provided can not be converted to integer.")
        print("Try again.")
##### block start
#if (type(a) == int): #works, but not really needed because we convert value to int in the row above
#if isinstance(a, int): #-||- (same as previous row)
#if (a == int): #doesn't work
#	print(a**100)
#	print("Complete")
##### block end
print(a**100)
print("Complete.")
