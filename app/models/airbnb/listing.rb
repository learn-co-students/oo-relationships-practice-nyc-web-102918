
class Listing

  attr_accessor :city, :trip

  @@all = []

  def initializate(city, trip)
    @city = city
    @trip = trip
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_count
    self.trips.length
  end

  def self.find_all_by_city(city)

  end

  def self.most_popular

  end

end
