class Customer
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    reviews = Review.filter{| rev | rev.customer == self}
    reviews.restaurants
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, rating, self)
  end

  def num_reviews
    ratings = Review.filter{|user| user.customer == self}
    ratings.map { |f| f.rating + f.rating2 }.reduce(:+)
  end

  def find_by_name(name)
    Customer.find{|customer| customer.full_name == name}
  end

  def find_all_by_given_name(name)
    Customer.filter{ |customer| customer.given_name == name}
  end
end
