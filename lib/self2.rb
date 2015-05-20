# self will reflect the Runtime Context. Or who is executing the current code.

# puts method is being called on the global "main" object
puts "in global self is #{self}"


def hello_world
  puts "In the hello_world method self is #{self}"
end

# hello_world is being called on the global "main" object
hello_world

class Song
  def initialize(name, price)
    @name = name
    @price = price
  end

  def buy
    puts "in the Song#buy instance method self is #{self}"
  end
end

s1 = Song.new("The Bottle", 1.49)
# self is the Song object, s1, in the Song#buy instance method.
# s1 is the object that is invoking the code in the buy instance method.
s1.buy

class Bike
  # the class Bike is the "object" that is invoking the puts method.
  puts "self for the class Bike is #{self}"
end
