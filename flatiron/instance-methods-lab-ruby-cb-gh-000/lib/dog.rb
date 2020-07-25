# An example of instance methods within objects.

class Dog
  def bark
    puts "Woof!"
  end
  def sit
    puts "The Dog is sitting"
  end
end

fido = Dog.new
fido.bark
