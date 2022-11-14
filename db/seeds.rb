# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Robbie", email: "robbie@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Joey", email: "joey@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Kevin", email: "kevin@test.com", password: "password", password_confirmation: "password")

Exercise.create!(name: "Barbell Bench Press", description: "Stack weights on barbell. Lay beneath it with the bottom of your chest lined up to the bar. Bring it down to your chest, push it back up. Keep your elbows at about a 45 degree angle and your back flat. Use your legs to anchor you, and push down on your shoulderblades.", image_url: "https://s3.amazonaws.com/prod.skimble/assets/2289486/image_iphone.jpg", video_url: "https://youtu.be/rT7DgCr-3pg")

Exercise.create!(name: "Lat Pulldown", description: "Select desired weight on the machine. Grip the bar with your hands slightly wider than your shoulders. Keep your pelvis tucked in and your back straight. Pull the bar down to about your chin, and slowly bring it back up. Keep your elbows just shy of a 90 degree angle. Pretend you hands are hooks and pull through your elbows to acativate your back.", image_url: "https://static.strengthlevel.com/images/illustrations/lat-pulldown-1000x1000.jpg", video_url: "https://youtu.be/X5n55mMqSUs")

Exercise.create!(name: "Barbell Squat", description: "Stack weights on barbell. Use a wide grip, get under the barbell and let it rest just below your neck. Push up with your legs and stand up striaght. Point your toes outward. Slowly squat down leading with your hips. Aim to get your hips aligned with the middle of your calves. Push back up, driving with your heels and legs.", image_url: "https://static.strengthlevel.com/images/illustrations/squat-1000x1000.jpg", video_url: "https://youtu.be/SW_C1A-rejs")

Exercise.create!(name: "Incline Dumbbell Bench Press", description: "Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other. Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width. Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position. Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest. Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them. Repeat the movement for the prescribed amount of repetitions. When you are done, place the dumbbells back on your thighs and then on the floor. This is the safest manner to release the dumbbells.  Variations: You can use several angles on the incline bench if the bench you are using is adjustable. Another variation of this exercise is to perform it with the palms of the hands facing each other. Also, you can perform the exercise with the palms facing each other and then twisting the wrist as you lift the dumbbells so that at the top of the movement the palms are facing away from the body.", image_url: "https://static.strengthlevel.com/images/illustrations/incline-dumbbell-bench-press-1000x1000.jpg", video_url: "https://www.youtube.com/watch?v=8iPEnn-ltC8")

Routine.create!(user_id: 1, exercise_id: 1, reps: 3)

Routine.create!(user_id: 1, exercise_id: 3, reps: 3)

Routine.create!(user_id: 2, exercise_id: 1, reps: 5)

Routine.create!(user_id: 3, exercise_id: 3, reps: 3)
