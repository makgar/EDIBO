#!/usr/bin/python3.6

check = False
while not check:
    print("Input a number:")
    try:
        a=int(input())
        check = True
    except:
        print("The value you've provided is can not be converted to integer.")
        print("Try again.")

res = a ** 100
res_to_str = str(res)
print(res_to_str)
print("Complete.")

with open('Result_file.txt', 'a') as f:
    f.write(res_to_str+"\n")
    #f.write("\n") #not needed due to update of the row above
f.closed
