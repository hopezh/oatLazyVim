# oat: aaa ---------------------------------------------------------------------
class Person:
    # TODO:  bbb
    def __init__(self, name, age):
        self.name = name
        self.age = age

    # FIX: eee
    def myfunc(self):
        print("Hello my name is " + self.name)


# o: bbb ---------------------------------------------------------------------
p1 = Person("John", 36)
p1.myfunc()

# o: ddd ---------------------------------------------------------------------
