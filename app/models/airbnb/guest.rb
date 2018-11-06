
class Guest

  attr_accessor :name

  @@all = []

  def initializate(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def listings
    Trip.all.map do |trip|
      if trip.guest == self
        trip.listing
      end
    end
  end

  def trips
    Trip.select.all do |trip|
      trip.guest == self
    end
  end

  # def self.pro_traveller
  #
  # end

end
