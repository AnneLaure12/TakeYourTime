# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start destroy'
User.destroy_all
Exercice.destroy_all
Mood.destroy_all
Achievement.destroy_all
puts "Finish destroy"

puts "Start seed"
user1 = User.create!(email: "nico@wagon.com", password: "azerty", first_name: "Nico", last_name: "Bob")
user2 = User.create!(email: "al@wagon.com", password: "azerty", first_name: "AL", last_name: "Patronne")

mood1 = Mood.create!(name: "stressed")
mood2 = Mood.create!(name: "happy")
mood3 = Mood.create!(name: "neutral")
mood4 = Mood.create!(name: "angry")

#Cas 1
#exos1 = Exercice.new(name: "Yoga", description: "postures de yoga" )
#exos1.mood = mood1
#exos1.save
#exos2 = Exercice.new(name: "Meditiation", description: "exercices de meditation")
#exos2.mood = mood2
#exos2.save

#Cas 2
exo0 = Exercice.create!(name: "Respiration", description: "exercices de respiration", mood: mood1)
exo1 = Exercice.create!(name: "Yoga", description: "postures de yoga", mood: mood1)
exo2 = Exercice.create!(name: "Meditiation", description: "exercices de meditation", mood: mood2)
exo3 = Exercice.create!(name: "Static position", description: "don't move and breath", mood: mood3)
exo4 = Exercice.create!(name: "Dynamic position", description: "chake your body!", mood: mood1)

#Cas 3
#mood1.exercices.create!(name: "Yoga", description: "postures de yoga")

Achievement.create!(date: "10/05/2019", mood: mood1, rating: 0, user: user1, exercice: exo0)
Achievement.create!(date: "28/05/2019", mood: mood2, rating: 0, user: user2, exercice: exo2)

puts "Finished !"

