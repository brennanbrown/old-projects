# An example of instance methods within objects.

class Person
  def talk
    puts "Hello World!"
  end
  def walk
    puts "The Person is walking"
  end
end

steve = Person.new
steve.walk
