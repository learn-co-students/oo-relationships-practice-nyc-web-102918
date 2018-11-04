require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



ruth = User.new("Ruth")

matt = User.new("Matt")

crystal = User.new("Crystal")

isiah = User.new("Isiah")


ruth.create_a_project("Save the Whales", 50)

matt.create_a_project("Critical Role", 100)

crystal.create_a_project("Board games", 1000)

isiah.create_a_project("life")

ruth.pledge_for_a_project("Critical Role", 10)
isiah.pledge_for_a_project("Critical Role", 10)

ruth.pledge_for_a_project("Board games", 90)

matt.pledge_for_a_project("Board games", 1000)


binding.pry 

"1"