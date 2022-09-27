class Review
  @@all = []
  attr_reader :customer, :restaurant, :rating

  def initialize(customer, restaurant, rating:integer)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end
end
