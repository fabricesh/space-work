
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.destroy_all
Reservation.destroy_all
User.destroy_all

puts 'Creating User...'
user = User.new(
  email: "azerty@gmail.com",
  password: "azerty"
  )
user.save

puts 'Creating fake spaces...'

space_one = Space.new(
  title: "Le Wagon",
  localisation: "16 Villa Gaudelet, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "98€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space_one.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space_one.save

space_one.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space_one.capacity)
    @new_capacity.space = space_one
    @new_capacity.save
  end
end


space = Space.new(
  title: "Welcome to the jungle",
  localisation: "16 Rue du Mail, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "140€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706129/workspace4_grsz6e.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: 3)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Numa",
  localisation: "39 Rue du Caire, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "150€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706129/workspace3_lhczps.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Les 2 au coin",
  localisation: "7 Rue Notre Dame de Bonne Nouvelle, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "50€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id

  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace8_x92laq.png"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Anticafé",
  localisation: "79 Rue Quincampoix, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "80€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Dojocrea",
  localisation: "24 Rue Béranger, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "40€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace1_gtldhl.png"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Cosy Corner",
  localisation: " 8 Rue Saint-Martin, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "80€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace6_nrl4d0.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Labo de l’Edition",
  localisation: " 2 Rue Saint-Médard, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "90€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace5_gyp83d.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Mozaïk",
  localisation: " 41 Rue de la Chaussée d'Antin, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "90€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace9_obkuig.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "CoworkCrèche",
  localisation: "89 Rue du Faubourg Saint-Antoine, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "80€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace2_jbffjd.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Lawomatic",
  localisation: "Paris, 5ème",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  price: "90€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707450/images_vtzs2h.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

space = Space.new(
  title: "Coworkshop",
  localisation: "20 Rue Jean et Marie Moinon, Paris",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  price: "90€",
  space_type: "Partagé",
  capacity: 10,
  user_id: user.id
  )
space.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707451/Wework3_qcwpzx.jpg"
space.save

space.availabilities.split(", ").each do |date|
    @new_capacity = CapacityPerDay.new(date: date, seats_available: space.capacity)
    @new_capacity.space = space
    @new_capacity.save
  end
end

reservation_one = Reservation.new(
period: "2019-05-30",
total_price: 20,
user_id: user.id
)
reservation_one.space = space_one
reservation_one.save

reservation_two = Reservation.new(
period: "2019-05-30",
total_price: 200,
user_id: user.id
)
reservation_two.space = space_one
reservation_two.save

reservation_three = Reservation.new(
period: "2019-05-30",
total_price: 2000,
user_id: user.id
)
reservation_three.space = space_one
reservation_three.save
puts 'Finished'


