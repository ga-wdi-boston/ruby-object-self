puts "Hello There self is #{self}"

def hello_world
  puts "in method hello_world self is #{self}"
end

hello_world

puts "Hello There self class name is #{self.class.name}"

class Person
  puts "in Person class self is #{self}"

  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end

  def yo
    "Yo, #{@first_name} #{@last_name}"
    puts "in Person#yo self is #{self}"
  end
end

p1 = Person.new "Fred", "Flintstone"
p1.yo
