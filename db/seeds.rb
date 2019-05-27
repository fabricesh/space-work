
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



user1 = User.new(
  email: "qsdfg@gmail.com",
  password: "qsdfg"
  )
user1.save
puts 'Creating fake spaces...'


space = Space.new(
  title: "Le Wagon",
  localisation: "16 Villa Gaudelet, Paris",
  availabilities: "Disponible dès maintenant",
  price: "98€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user1.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space.save


space = Space.new(
  title: "Welcome to the jungle",
  localisation: "16 Rue du Mail, Paris",
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
  localisation: "39 Rue du Caire, Paris",
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
  localisation: "7 Rue Notre Dame de Bonne Nouvelle, Paris",
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
  localisation: "79 Rue Quincampoix, Paris",
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
  localisation: "24 Rue Béranger, Paris",
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
  localisation: " 8 Rue Saint-Martin, Paris",
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
  localisation: " 2 Rue Saint-Médard, Paris",
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
  localisation: " 41 Rue de la Chaussée d'Antin, Paris",
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
  localisation: "89 Rue du Faubourg Saint-Antoine, Paris",
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
  localisation: "20 Rue Jean et Marie Moinon, Paris",
  availabilities: "Disponible dès maintenant",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707451/Wework3_qcwpzx.jpg"
space.save
puts 'Finished'


