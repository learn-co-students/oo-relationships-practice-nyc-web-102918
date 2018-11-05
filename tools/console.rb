require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end








# AIRBNB #

# ruth = Guest.new("Ruth")
# crystal = Guest.new("Crystal")
# emily = Guest.new("Emily")
# nicole = Guest.new("Nicolette")

# nyc = Listing.new("NYC")
# dc = Listing.new("Washington DC")
# japan = Listing.new("Kyoto")

# l1 = Trip.new(ruth, dc)
# l2 = Trip.new(crystal, japan)
# l3 = Trip.new(nicole, nyc)
# l4 = Trip.new(emily, dc)
# l5 = Trip.new(ruth, japan)


# GYM #

# ruth = Trainer.new("Ruth")
# crystal = Trainer.new("Crystal")
# nicole = Trainer.new("Nicolette")

# kyoto = Location.new("Kyoto")
# harrison = Location.new("Harrison")
# bronx = Location.new("Bronx")

# matt = Client.new("Matt", bronx)
# isiah = Client.new("Isiah", kyoto)
# kevin = Client.new("Kevin", harrison)
# david = Client.new("David", kyoto)
# michael = Client.new("Michael", kyoto)

# matt.assign_trainer(crystal)
# isiah.assign_trainer(ruth)
# kevin.assign_trainer(nicole)
# david.assign_trainer(crystal)
# michael.assign_trainer(ruth)


# ruth = User.new("Ruth")

# matt = User.new("Matt")

# crystal = User.new("Crystal")

# isiah = User.new("Isiah")


# CROWDFUNDING #

# ruth.create_a_project("Save the Whales", 50)

# matt.create_a_project("Critical Role", 100)

# crystal.create_a_project("Board games", 1000)

# isiah.create_a_project("life")

# ruth.pledge_for_a_project("Critical Role", 10)
# isiah.pledge_for_a_project("Critical Role", 10)

# ruth.pledge_for_a_project("Board games", 90)

# matt.pledge_for_a_project("Board games", 1000)


binding.pry 

"1"