
class Trip

  attr_accessor :listing, :guest

  @@all = []

  def initialization(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

end
