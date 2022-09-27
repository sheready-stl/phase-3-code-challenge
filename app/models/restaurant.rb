class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.filter{|revie| review.restaurant == self}
  end

  def customers
    reviews = Review.filter{| rev | rev.restaurant == self}
    reviews.customer
  end

end
