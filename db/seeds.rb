# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Robbie", email: "robbie@test.com", password_digest: "password")

User.create!(name: "Joey", email: "joey@test.com", password_digest: "password")

User.create!(name: "Kevin", email: "kevin@test.com", password_digest: "password")

Exercise.create!(name: "Barbell Bench Press", description: "Stack weights on barbell. Lay beneath it with the bottom of your chest lined up to the bar. Bring it down to your chest, push it back up. Keep your elbows at about a 45 degree angle and your back flat. Use your legs to anchor you, and push down on your shoulderblades.", image_url: "https://s3.amazonaws.com/prod.skimble/assets/2289486/image_iphone.jpg", video_url: "https://youtu.be/rT7DgCr-3pg")

Exercise.create!(name: "Lat Pulldown", description: "Select desired weight on the machine. Grip the bar with your hands slightly wider than your shoulders. Keep your pelvis tucked in and your back straight. Pull the bar down to about your chin, and slowly bring it back up. Keep your elbows just shy of a 90 degree angle. Pretend you hands are hooks and pull through your elbows to acativate your back.", image_url: "https://static.strengthlevel.com/images/illustrations/lat-pulldown-1000x1000.jpg", video_url: "https://youtu.be/X5n55mMqSUs")

Exercise.create!(name: "Barbell Squat", description: "Stack weights on barbell. Use a wide grip, get under the barbell and let it rest just below your neck. Push up with your legs and stand up striaght. Point your toes outward. Slowly squat down leading with your hips. Aim to get your hips aligned with the middle of your calves. Push back up, driving with your heels and legs.", image_url: "https://static.strengthlevel.com/images/illustrations/squat-1000x1000.jpg", video_url: "https://youtu.be/SW_C1A-rejs")

Routine.create!(user_id: 1, exercise_id: 1, reps: 3)

Routine.create!(user_id: 1, exercise_id: 3, reps: 3)

Routine.create!(user_id: 2, exercise_id: 1, reps: 5)

Routine.create!(user_id: 3, exercise_id: 3, reps: 3)
