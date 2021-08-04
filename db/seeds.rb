# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!([
  { username: "Jmcguire93", email: "james@example.com", password_digest: "password" },
  { username: "Test", email: "test@example.com", password_digest: "password" },
])

workout = Workout.create!([
  { name: "Upperbody", description: "This is a workout for your upperbody!", user_id: 1 },
  { name: "Lowerbody", description: "This is a workout for your lowerbody!", user_id: 2 },
])

exercise = Exercise.create!([
  { name: "Dumbbell Chest Press", muscle_group: "Chest", instructions: "1.) Lie on a flat bench with your feet pressing into the floor. 2.) Draw your shoulders down and back to press them into the bench. 3.) Hold two dumbbells with palms facing forward and your thumbs wrapped around the handle. 4.) On an inhale, lower the dumbbells slightly wider than your mid-chest, slowly and with control. 5.) Breathe in as you lower the weights until elbows are just below a 90 degree angle. 6.) Breathe out as you press your arms upward toward the ceiling.", image: "https://acewebcontent.azureedge.net/exercise-library/large/19-2.jpg" },
  { name: "Incline Dumbbell Chest Press", muscle_group: "Chest", instructions: "1.) Lie on an inclined bench (Approximately 40 degree angle) with your feet pressing into the floor. 2.) Draw your shoulders down and back to press them into the bench. 3.) Hold two dumbbells with palms facing forward and your thumbs wrapped around the handle. 4.) On an inhale, lower the dumbbells slightly wider than your mid-chest, slowly and with control. 5.) Breathe in as you lower the weights until elbows are just below a 90 degree angle. 6.) Breathe out as you press your arms upward toward the ceiling.", image: "https://acewebcontent.azureedge.net/exercise-library/large/25-3.jpg" },
  { name: "Bench Press", muscle_group: "Chest", instructions: "1.) Lie on a flat bench with your feet pressing into the floor. 2.) Draw your shoulders down and back to press them into the bench. 3.) Hold the barbell at about shoulder width (Closer grip will emphasize more triceps work, wider grip will emphasize more pectoral work) 4.) On an inhale, lower the barbell slightly below and to your mid-chest, slowly and with control. 5.) Breathe in as you lower the weights until elbows are just below a 90 degree angle or make contact with your chest. 6.) Breathe out as you press your arms upward toward the ceiling.", image: "https://acewebcontent.azureedge.net/exercise-library/large/5-2.jpg" },
])