# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start destroy'
Achievement.destroy_all
User.destroy_all
Exercice.destroy_all
Mood.destroy_all
Classe.destroy_all
puts "Finish destroy"

puts "Start seed"


puts "Creating users..."
users_data = [ { email: "nico@wagon.com", password: "azerty", first_name: "Nico", last_name: "Bob" },
               { email: "al@wagon.com", password: "azerty", first_name: "AL", last_name: "Patronne" } ]

User.create!(users_data)
# user1 = User.first && user2 = User.second
user1, user2 = User.all



puts "Creating moods..."
# before refacto
# mood1 = Mood.create!(name: "stressed")
# mood2 = Mood.create!(name: "happy")
# mood3 = Mood.create!(name: "neutral")

# after refacto
moods_data = [
  { name: "stressed"}, {name: "happy"}, {name: "neutral"} ]
Mood.create!(moods_data)
mood1, mood2, mood3 = Mood.all


#Cas 1
#exos1 = Exercice.new(name: "Yoga", description: "postures de yoga" )
#exos1.mood = mood1
#exos1.save
#exos2 = Exercice.new(name: "Meditiation", description: "exercices de meditation")
#exos2.mood = mood2
#exos2.save

#Cas 2
#mood1.exercices.create!(name: "Yoga", description: "postures de yoga")

#Cas 3
#before refacto
# exo0 = Exercice.create!(name: "Respiration", description: "exercices de respiration", mood: mood1)
# exo1 = Exercice.create!(name: "Yoga", description: "postures de yoga", mood: mood1)
# exo2 = Exercice.create!(name: "Meditiation", description: "exercices de meditation", mood: mood2)
# exo3 = Exercice.create!(name: "Static position", description: "don't move and breath", mood: mood3)
# exo4 = Exercice.create!(name: "Dynamic position", description: "chake your body!", mood: mood1)

#after refacto
puts "Creating exercices..."

exos_data = [ { name: "Respiration", description: "exercices de respiration", mood: mood1 },
              { name: "Yoga", description: "postures de yoga", mood: mood1 },
              { name: "Meditiation", description: "exercices de meditation", mood: mood2 },
              { name: "Static position", description: "don't move and breath", mood: mood2 },
              { name: "Dynamic position", description: "chake your body!", mood: mood3 },
              { name: "Writing Exercise", description: "Write down three things you're grateful for", mood: mood3 }
            ]
Exercice.create!(exos_data)
exo1, exo2, exo3, exo4, exo5 = Exercice.all





puts "Creating achievements..."

Achievement.create!(date: "10/05/2019", mood: mood1, rating: 3, user: user1, exercice: exo1)
Achievement.create!(date: "28/05/2019", mood: mood2, rating: 4, user: user2, exercice: exo2)


achievements_data = [ { date: "10/05/2019", mood: mood1, rating: 3, user: user1, exercice: exo1 },
                      { date: "28/05/2019", mood: mood2, rating: 4, user: user2, exercice: exo2 },
                    ]

puts "Creating classes..."

Classe.create!(name: "Denis", address: "1, rue Jean Moulin", description: "nice yoga and meditation classes", start_at: Date.now)
Classe.create!(name: "Alice", address: "15, rue Général Leclerc", description: "Dynamic yoga classes", start_at: Date.now)

puts "Finished !"

