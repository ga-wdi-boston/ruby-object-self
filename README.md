![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

## Objectives 
* Use **self** to determine runtime context.
* Use **self** to invoke a setter method.
* Use **self** to define a class method.
* Define and use class instance variables and class methods.
* Practice Object declaration, inheritence and OOP.


## Ruby Self

**Self** changes as you run a program. At times **self** is going to be a particular object. Later, **self** could be a different object. In fact, at some times in a running program **self** may be a *class*.

At every point in time when your program is running there is one and only one class or object that **self** is referencing or pointing to. 

**Self** represents the **Runtime Context** of your program. At a specific time in the life of your program the context may change. You may be running code inside of a instance method and **self** would point to the instance that invoked the method.



Self will point to one of three runtime contexts:

* Global context. For all methods invoked without a class or object **self** will be an instance of the Object class, *main*.

```ruby
puts "Hello There self is #{self}"

def hello_world
  puts "in method hello_world self is #{self}"
end

hello_world

puts "Hello There self class name is #{self.class.name}"
```
* Object context. For all methods invoked on an object **self** will point to that object.  

```ruby
class Person
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
```
	
* Class context. For all methods invoked in a class **self** will point to that class.  

```ruby
class Person
  puts "in Person class self is #{self}"     
end
```
## Demo: When to use **self** in instance methods.

Lets take a look at the lib/person.rb and run the bin/person_app.rb.

Modify the the signed_contract instance method to:  

1. Test the status instance variable.

	* Use the status instance variable, @status = active, only.  
	* Use binding.pry to look at self.
	* Run the bin/person_app.rb.

2. Test the status local variable.  

	* Use the status local variable, status = active, only.  
	* Use binding.pry to look at self.  
	* Run the bin/person_app.rb.  
	
3. Test the status instance method.	

	* Use the status instance method, self.status = active, only.
	* Use binding.pry to look at self.  
	* Run the bin/person_app.rb.



Lets discuss and explain this behavior.

## Lab

* Create an Auto class that has model, make and year attributes.   
* All Auto instances must be immutable, they can't be updated.
* When a auto object is created and string interpolated it should display ``<year> <model> <make>``.  

	>> For example a Ford Mustang that was manufactured in 1967 should be shown as "1967 Ford Mustang".  
	
* Create a subclass DealerAuto that inherits from the Auto class and adds a price attribute.
* When a DealerAuto price setter method is invoked to change it's price it must ALSO announce this change using the OSX `say` command.  

```
	%x{ say "Changing #{self} price from #{self.price} to #{new_price}" }
```

Note: Changing the price with this price setter method has this *side effect*. 

* Create a DealerAuto#discount method that takes one argument, the percentage of the current price to discount. *Calling mustang.discount(10) will take 10 percent off of the mustang's price.*

In this DealerAuto#discount method change the price using.

1. An instance variable, @price.  
 ```
 @price = @price - @price * (percentage.to_f/100.0)
 ```
 
2. A local variable, price.  
```
price = price - price * (percentage.to_f/100.0)
```
3. Using the price setter.
```
   self.price = price - price * (percentage.to_f/100.0)
```

For each of the above explain the behavior to another student and an instructor. 

Which of the above should one use?

## Class variables and methods.

Sometimes a method or a variable is associated with a class, not an object. 

For example, we may want to generate id's for each Person object we create. So, we'll create an attribute that is shared by all Person instances. This is called a **class variable.**

```ruby
class Person
  # class variable that will keep a running count
  # of all the people created.
  @person_counter = 0
...
```

And if we want to create a method that is shared by all Person instances we can create a **class method**.

```ruby
class Person
  # class variable that will keep a running count
  # of all the people created.
  @person_counter = 0

  # use the person counter to generate an unique ID for
  # each person. 
  def self.getID
    @person_counter += 1
  end

  # Same as above, you know why right?
  # def Person.getID
  #  @person_counter += 1
  # end
  
  attr_reader :first_name, :status, :id

  def initialize(fname, lname)
	...
	# set this person's ID using the class method
   @id = Person.getID
  end

```


### Self used inside the class definition.

The variable _self_ when used inside the class definition, __but not inside the instance methods__, refers to the Class itself.

In the definition of the class method, Person.getID, we see that **self** refers to the Person class itself.

### Lab

* In the Auto class create a class method that will generate a Vechicle ID Number, VIN. 

* (Bonus) Maybe you can figure out how this is done using this [Wikipedia Page](http://en.wikipedia.org/wiki/Vehicle_identification_number)


