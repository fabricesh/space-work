
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating User...'
user = User.new(
  email: "azerty@gmail.com",
  password: "azerty"
  )
user.save
puts 'Creating fake spaces...'

space = Space.new(
  title: "Le Wagon",
  localisation: "Paris, 11ème",
  availabilities: "Disponible dès maintenant",
  price: "98€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space.save

space = Space.new(
  title: "Welcome to the jungle",
  localisation: "Paris, 10ème",
  availabilities: "Disponible dès maintenant",
  price: "140€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706129/workspace4_grsz6e.jpg"
space.save

space = Space.new(
  title: "Numa",
  localisation: "Paris, 9ème",
  availabilities: "Disponible dès maintenant",
  price: "150€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706129/workspace3_lhczps.jpg"
space.save

space = Space.new(
  title: "Les 2 au coin",
  localisation: "Paris, 3ème",
  availabilities: "Disponible dès maintenant",
  price: "50€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id

  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace8_x92laq.png"
space.save

space = Space.new(
  title: "Anticafé",
  localisation: "Paris, 8ème",
  availabilities: "Disponible dès maintenant",
  price: "80€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space.save

space = Space.new(
  title: "Dojocrea",
  localisation: "Paris, 6ème",
  availabilities: "Disponible dès maintenant",
  price: "40€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace1_gtldhl.png"
space.save

space = Space.new(
  title: "Cosy Corner",
  localisation: "Paris, 3ème",
  availabilities: "Disponible dès maintenant",
  price: "80€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace6_nrl4d0.jpg"
space.save

space = Space.new(
  title: "Labo de l’Edition",
  localisation: "Paris, 5ème",
  availabilities: "Disponible dès maintenant",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace5_gyp83d.jpg"
space.save

space = Space.new(
  title: "Mozaïk",
  localisation: "Paris, 8ème",
  availabilities: "Disponible dès maintenant",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace9_obkuig.jpg"
space.save

space = Space.new(
  title: "CoworkCrèche",
  localisation: "Paris, 3ème",
  availabilities: "Disponible dès maintenant",
  price: "80€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace2_jbffjd.jpg"
space.save

space = Space.new(
  title: "Lawomatic",
  localisation: "Paris, 5ème",
  availabilities: "Disponible dès maintenant",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707450/images_vtzs2h.jpg"
space.save

space = Space.new(
  title: "Coworkshop",
  localisation: "Paris, 8ème",
  availabilities: "Disponible dès maintenant",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707451/Wework3_qcwpzx.jpg"
space.save
puts 'Finished'


