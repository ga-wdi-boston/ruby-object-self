class Cat
  @cat_number = 0

  def intiailize
    @cat_number = self.class.add_cat
  end

  def self.add_cat
    @cat_number += 1
  end

  def cat_number
    @cat_number
  end
end
