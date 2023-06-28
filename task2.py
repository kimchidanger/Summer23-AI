choice = input("hours to minutes? [y]/[n]")
if (choice == "y"):
    choice2 = int (input("how mnay hours?"))
    print(choice2*60)
elif (choice == "n"):
    choice3 = int (input("how mnay minutes?"))
    print(choice3/60) 