# Create professional athletes
ProfessionalAthlete.create(name: "Michael Phelps", sport: "Swimming", location: "Baltimore, MD")
ProfessionalAthlete.create(name: "Serena Williams", sport: "Tennis", location: "Palm Beach Gardens, FL")

# Create mental health professionals
MentalHealthProfessional.create(name: "Dr. Jane Smith", expertise: "Sports Psychology", location: "Los Angeles, CA")
MentalHealthProfessional.create(name: "Dr. John Doe", expertise: "Performance Counseling", location: "New York, NY")

# Create nutritionists
Nutritionist.create(name: "Sarah Johnson", expertise: "Sports Nutrition", location: "Chicago, IL")
Nutritionist.create(name: "Alex Lee", expertise: "Athletic Diet Planning", location: "San Francisco, CA")

# Create bio mechanists
BioMechanist.create(name: "Professor Mike Brown", expertise: "Kinesiology", location: "Boston, MA")
BioMechanist.create(name: "Dr. Emily White", expertise: "Biomechanical Analysis", location: "Seattle, WA")

puts "Seed data has been created."

# Create users
User.create(name: "John Doe", email: "john@example.com", password: "password", password_confirmation: "password", username: "johndoe")
User.create(name: "Jane Smith", email: "jane@example.com", password: "password", password_confirmation: "password", username: "janesmith")

# Add more dummy data for other models if needed

puts "Seed data has been created."
