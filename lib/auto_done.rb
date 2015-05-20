class Auto
  #  Autos are immutable, they can not be changed
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def to_s
    "#{year} #{make} #{model}"
  end
end

class DealerAuto < Auto
  attr_reader :price
  def initialize(make, model, year, price)
    super(make, model, year)
    @price = price
  end

  def price=(new_price)
    %x{ say "Changing #{self} price from #{self.price} to #{new_price}" }
    @price = new_price
  end

  def discount(percentage)
    # @price = @price - @price * (percentage.to_f/100.0)
    # price = price - price * (percentage.to_f/100.0)
    self.price = price - price * (percentage.to_f/100.0)
  end
end
