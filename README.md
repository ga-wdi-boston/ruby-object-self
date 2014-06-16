## Ruby Self

"We use _self_ similar to the way we use pronouns in natural languages like English and French. We write: “John is running fast because he is trying to catch the train.” Note the use of the pronoun “he.”  

We could have written this: “John is running fast because John is trying to catch the train.” We don’t reuse “John” in this manner, for if we do, our family, friends, and colleagues would abandon us. Yes, they would. In a similar aesthetic manner, we use the _self_ keyword as a shortcut, a referent to refer to an object."

Self:

* Is a variable that lives inside __every__ object. 
* Is a variable that lives inside __every__ class.


### Self used in instance methods

When you "call a method" on an object you are calling an instance method.

```
jack = Person.new('Jack', 'Smith')

  # Call the instance method full_name
jack.full_name

```

### Demo

Lets take a look at the lib/person.rb and run the bin/person_app.rb.

### Lab 
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



Discuss and explain this behavior to another student.


### Self used inside the class definition.

The variable _self_ when used inside the class definition, __but not inside the instance methods__, refers to the Class itself.

### Lab

* Add binding.pry inside the Person class and run bin/person_app.rb.
* Create a class method and class variable to count the number of people we create.
* Use this class method to update the class increment the counter everytime we create another Person.
* Update bin/person_app.rb to show the count of People.


