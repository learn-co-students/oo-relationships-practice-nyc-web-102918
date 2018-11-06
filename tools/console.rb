require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# IMDB #

show1 = Show.new("The objects")
movie1 = Movie.new("The objects")
movie2 = Movie.new("CodeLab")
actor1 = Actor.new("Crystal")
actor2 = Actor.new("Ruth")

character1 = Character.new("C-rock", actor1, movie1)

character2 = Character.new("R-rock", actor2, nil, show1)

character3 = Character.new("R-rock", actor1, nil, movie1)

character1 = Character.new("C-rock", actor1, movie2)


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

# CROWDFUNDING #

# ruth = User.new("Ruth")

# matt = User.new("Matt")

# crystal = User.new("Crystal")

# isiah = User.new("Isiah")




# matt.create_a_project("Critical Role", 100)

# crystal.create_a_project("Board games", 1000)

# isiah.create_a_project("DnD life")

# ruth.pledge_for_a_project("Critical Role", 10)

# isiah.pledge_for_a_project("Critical Role", 10)

# ruth.pledge_for_a_project("Board games", 90)

# matt.pledge_for_a_project("Board games", 1000)


binding.pry 

"1"