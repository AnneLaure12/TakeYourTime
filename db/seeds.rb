# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start destroy'
User.destroy_all
exercise.destroy_all
Mood.destroy_all
Achievement.destroy_all
puts "Finish destroy"

puts "Start seed"
user1 = User.create!(email: "nico@wagon.com", password: "azerty", first_name: "Nico", last_name: "Bob")
user2 = User.create!(email: "al@wagon.com", password: "azerty", first_name: "AL", last_name: "Patronne")

mood1 = Mood.create!(name: "stressed")
mood2 = Mood.create!(name: "happy")

#Cas 1
#exos1 = exercise.new(name: "Yoga", description: "postures de yoga" )
#exos1.mood = mood1
#exos1.save
#exos2 = exercise.new(name: "Meditiation", description: "exercises de meditation")
#exos2.mood = mood2
#exos2.save

#Cas 2
exo1 = exercise.create!(name: "Yoga", description: "postures de yoga", mood: mood1)
exo2 = exercise.create!(name: "Meditiation", description: "exercises de meditation", mood: mood2)

#Cas 3
#mood1.exercises.create!(name: "Yoga", description: "postures de yoga")

Achievement.create!(date: "10/05/2019", init_mood: mood1, final_mood: mood2, user: user1, exercise: exo1)
Achievement.create!(date: "28/05/2019", init_mood: mood1, final_mood: mood2, user: user2, exercise: exo2)

puts "Finished !"

