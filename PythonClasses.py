class Student:
    def __init__(self, name, course):
        self.name = name
        self.course = course

    def myfunc(self):
        print("Hi, my name is " + self.name ". I am taking " + self.course)
    
p1 = Student("John", "math")
p1.myfunc()