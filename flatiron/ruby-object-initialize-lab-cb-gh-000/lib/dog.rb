# An example of initialization within objects.

class Dog

  def initialize(name, breed = "Mutt")
    @breed = breed
    @name = name
  end
end
