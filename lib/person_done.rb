# Define a Person class
class Person

  attr_reader :first_name, :status
  attr_accessor :last_name

  def initialize(fname, lname)
    @first_name, @last_name = fname, lname
    @status = 'inactive'
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    %x{ say "#{full_name} has changed their status to #{status}"}
  end

  def signed_contract
    # Problem:
    # Will not call the setter method to and notify, or say, that the status
    # has changed!
    # @status = 'active'

    # Problem:
    # This will create a variable, status, that is ONLY local to this method!
    # status = 'active'

    # OK, we are going to refer to this object, using self, and call the status method.
    # This will notify, or say, that theh Person's status has changed.
    self.status = 'active'
  end
end
