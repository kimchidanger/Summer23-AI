import math as red
import random as blue

result_1 = red.pow(2, 4)
print("result_1 is", result_1)

result_2 = red.sqrt(16)
print("result_2 is", result_2)

result_3 = blue.randint(0,100)
print("result_3 is", result_3)

names = ["Bob", "Jeff", "Bill", "Elena", "Tim", "Dominic", "Joe", "Eric"]
print("Original names", names)

blue.shuffle(names)
print("Names after shuffling ", names)

result_4 = blue.choice(names)
print("Chosen name is ", result_4)