# Define an interface
from abc import ABC, abstractmethod

class Readable(ABC):
    @abstractmethod
    def read_data(self, filename):
        pass

# Implementing a class that uses inheritance and implements an interface
class BaseClass(Readable):
    def __init__(self, data):
        self.data = data

    def process_data(self):
        # Demonstrate the use of a loop
        for item in self.data:
            print(item)

    # Override a method from the inherited interface
    def read_data(self, filename):
        with open(filename, 'r') as file:
            self.data = file.readlines()

# Subclass inheriting from BaseClass
class SubClass(BaseClass):
    def __init__(self, data):
        super().__init__(data)

    # Additional methods specific to SubClass
    def process_data(self):
        print("Processing data in SubClass:")
        super().process_data()  # Call overridden method in superclass

# Example usage
if __name__ == "__main__":
    # Initialize an instance of SubClass with data from a file
    instance = SubClass([])
    instance.read_data('data.txt')
    instance.process_data()
    