# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

############ Include vs. Extend

# You can inject the methods from a module into a class using either include or extend. The include adds the methods from the module into the class as instance methods while extend add the methods as class methods:

module HelperMethods
  def greeting(name)
    p "Hello #{name}"
  end
end
## Include the module as an instance method
class Class1
  include HelperMethods
end
## Extend adds the methods as class methods
class Class2
  extend HelperMethods
end
## Create an instance of greeting inside the Class1 method
c = Class1.new
c.greeting("Guy")

### can call the module methods directly on the class
Class2.greeting("Guy")
