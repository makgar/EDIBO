#!/usr/bin/python3.6

class PartyAnimal:
   x = 0 #this will not show up in vars(object_name)

#__init__ metode tiks izpildīta tikai vienu reizi, veidojot katru instanci
   def __init__(self):
       print("I am constructed")
       self.x = 0 #this will now show up in vars(object_name)

   def party(self):
     self.x = self.x + 1
     print("So far x property of object is: ", self.x)

   def __del__(self):
      print("I am deconstructed", self.x)

print("Before an = PartyAnimal()")
#print(vars())
#print(dir())
an = PartyAnimal()
#print(vars())
print("After an = PartyAnimal()")
print("an data type:\n", type(an),"\n")
print("an methods and properties\n", dir(an),"\n")
print("an x property data type\n", type(an.x),"\n")
print("an party method data type\n", type(an.party),"\n")
print(vars(an)) #ja klase ir bez "self.x = ..." iekš __init__, tad {}
#ja klase ir ar "self.x = ..." iekš __init__, tad {'x': ...}

print("\nBefore first an.party()")
an.party()
print("After first an.party()")
print(vars(an)) #object updated {'x': 1}

an.x = 100
an.__init__()

print("\nBefore second an.party()")
an.party()
print("After second an.party()")

an.x = 200

print("\nBefore third an.party()")
an.party()
print("After first an.party()")

print("\nBefore one more party()")
PartyAnimal.party(an)
print("After one more party()")
