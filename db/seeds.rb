# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start destroy'
Booking.destroy_all
Achievement.destroy_all
User.destroy_all
Exercice.destroy_all
Mood.destroy_all
Teacher.destroy_all
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

  { name: "Anxious"}, {name: "Tired"}, {name: "Angry"}, {name: "Upset"}, {name: "Excited"}, {name: "Strong"}, {name: "Happy"}, {name: "Peaceful"}  ]
Mood.create!(moods_data)
mood1, mood2, mood3, mood4, mood5, mood6, mood7, mood8 = Mood.all


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

exos_data = [ { name: "Yoga", video: "https://www.youtube.com/embed/CA5wTlsn6ek", mood: mood1 },
              { name: "Meditation", photo: "meditation.jpg", mood: mood1 },
              { name: "Meditation", description: "exercices de meditation", mood: mood2 },
              { name: "Writing Exercise", description: "Find a nice and quiet spot. Take a good cup of coffee or tea, as you like! Open your journal and start writing the upsetting things you are carrying recently. Finish your exercise by writting down three things you are grateful for in your life. At the end, close your eyes and take three deep breathes.", mood: mood2 },
              { name: "Dynamic position", description: "chake your body!", mood: mood3 },
              { name: "Writing Exercise", description: "Write down three things you're grateful for", mood: mood3 },
              { name: "Respiration", description: "exercices de respiration", mood: mood4 },
              { name: "Yoga", description: "postures de yoga", mood: mood4 },
              { name: "Meditation", description: "exercices de meditation", mood: mood5 },
              { name: "Static position", description: "don't move and breath", mood: mood5 },
              { name: "Dynamic position", description: "chake your body!", mood: mood6 },
              { name: "Writing Exercise", description: "Write down three things you're grateful for", mood: mood6 },
              { name: "Respiration", description: "exercices de respiration", mood: mood7 },
              { name: "Yoga", description: "postures de yoga", mood: mood7 },
              { name: "Meditation", description: "exercices de meditation", mood: mood8 },
              { name: "Static position", description: "don't move and breath", mood: mood8 }
            ]
Exercice.create!(exos_data)
exo1, exo2, exo3, exo4, exo5, exo6, exo7, exo8, exo9, exo10, exo11, exo12, exo13, exo14, exo15, exo16 = Exercice.all





puts "Creating achievements..."


achievements_data = [ { date: "31/05/2019", mood: mood2, rating: 1, user: user2, exercice: exo1 },
                      { date: "01/06/2019", mood: mood3, rating: 0, user: user2, exercice: exo2 },
                      { date: "02/06/2019", mood: mood5, rating: 3, user: user2, exercice: exo2 },
                      { date: "03/06/2019", mood: mood4, rating: 3, user: user2, exercice: exo2 },
                      { date: "04/06/2019", mood: mood2, rating: 2, user: user2, exercice: exo2 },
                      { date: "05/06/2019", mood: mood6, rating: 3, user: user2, exercice: exo2 },
                      { date: "06/06/2019", mood: mood7, rating: 4, user: user2, exercice: exo2 }
                    ]

Achievement.create!(achievements_data)
achievement1, achievement2 = Achievement.all


puts "Creating classs..."

Teacher.create!(name: "Yoga Karakam", address: "59 Cours Saint-Louis, 33300 Bordeaux", description: "transformative meditation classes", latitude: nil, longitude: nil)
Teacher.create!(name: "Yoga With You", address: "38 quai de Bacalan, 33300 Bordeaux", description: "all types of yoga in a peaceful surroundings", latitude: nil, longitude: nil)
Teacher.create!(name: "Yoga Bikram", address: "26 Cours de la Martinique, 33000 Bordeaux", description: "dynamic yoga classes", latitude: nil, longitude: nil)
Teacher.create!(name: "Zen and Dance Yoga", address: "55 Cours du Médoc, 33300 Bordeaux", description: "good yoga classes in Bordeaux", latitude: nil, longitude: nil)
Teacher.create!(name: "Cocoon Yoga", address: "17 Rue Charles Puyo, 33300 Bordeaux", description: "smooth meditation classes", latitude: nil, longitude: nil)
Teacher.create!(name: "Body To Soul Yoga", address: "14 Rue des Frères Portmann, 33300 Bordeaux", description: "nice dynamic & dancing yoga", latitude: nil, longitude: nil)
Teacher.create!(name: "Yogavita", address: "13 Rue de Leybardie, 33300 Bordeaux", description: "wonderful class with yoga & meditation", latitude: nil, longitude: nil)
Teacher.create!(name: "Trishula", address: "Impasse Barreyre Deuxième, 33300 Bordeaux", description: "Iyengar classes", latitude: nil, longitude: nil)
Teacher.create!(name: "Obraze", address: "4 place Saint Martial, 33300 Bordeaux", description: " Hatha Yoga ", latitude: nil, longitude: nil)

puts "Finished !"

