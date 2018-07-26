require 'faker'


# Création des Villes

10.times do
	new_city = City.create(cityname: Faker::StarWars.planet)
end

# Création des Chiens

10.times do
	new_dog = Dog.create(name: Faker::HarryPotter.character, city_id: rand(City.first.id..City.last.id))
end

# Création des Dogsitters

10.times do
	new_dogsiter = Dogsitter.create(lastname: Faker::Name.name, firstname: Faker::Name.name, city_id: rand(City.first.id..City.last.id))
end


# Création des Strolls

10.times do
	new_strolls = Stroll.create(date: Faker::Date.forward(23), name: Faker::Hobbit.location, city_id: rand(City.first.id..City.last.id), dog_id: rand(Dog.first.id..Dog.last.id), dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id))
end