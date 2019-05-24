# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating fake spaces...'
space = Space.create(
  title: "Le Wagon",
  localisation: "Paris, 11ème",
  availabilities: "Disponible dès maintenant",
  price: "50€",
  space_type: "Partagé",
  capacity: "10 personnes",
  image: "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png",
  user_id: 1
  )
space.save
puts 'Finished'

Space.create(title: "Le Wagon", localisation: "Paris, 11ème", availabilities: "Disponible dès maintenant", price: "50€", space_type: "Partagé", capacity: "10 personnes", image: "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png", user_id: 1)
Space.create(title: "Le Wagon", localisation: "Paris, 11ème", availabilities: "Disponible dès maintenant", price: "50€", space_type: "Partagé", capacity: "10 personnes", image: "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png", user_id: 1)
Space.create(title: "Le Wagon", localisation: "Paris, 11ème", availabilities: "Disponible dès maintenant", price: "50€", space_type: "Partagé", capacity: "10 personnes", image: "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png", user_id: 1)
Space.create(title: "Le Wagon", localisation: "Paris, 11ème", availabilities: "Disponible dès maintenant", price: "50€", space_type: "Partagé", capacity: "10 personnes", image: "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png", user_id: 1)
