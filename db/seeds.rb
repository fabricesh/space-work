User.destroy_all
Reservation.destroy_all
Space.destroy_all

puts 'Creating User...'
user = User.new(
  email: "azerty@gmail.com",
  password: "azerty"
  )
user.save

user_renter = User.new(
  email: "renter@gmail.com",
  password: "renter"
  )
user_renter.save


puts 'Creating fake spaces...'
# Space 1
space_1 = Space.new(
  title: "Le Wagon",
  localisation: "16 Villa Gaudelet, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "98€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_1.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space_1.save

  review = Review.new(
    stars: 5,
    content: "J'adore cet endroit",
    )
  review.space = space_1
  review.user = user_renter
  review.save

  review = Review.new(
    stars: 4,
    content: "Super espace",
    )
  review.space = space_1
  review.user = user_renter
  review.save

  review = Review.new(
    stars: 4,
    content: "Au top",
    )
  review.space = space_1
  review.user = user_renter
  review.save

# Space 2
space_2 = Space.new(
  title: "Welcome to the jungle",
  localisation: "16 Rue du Mail, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "140€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_2.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706129/workspace4_grsz6e.jpg"
space_2.save

  review = Review.new(
    stars: 5,
    content: "Au top",
    )
  review.space = space_2
  review.user = user_renter
  review.save

# Space 3
space_3 = Space.new(
  title: "Numa",
  localisation: "39 Rue du Caire, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "150€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_3.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706129/workspace3_lhczps.jpg"
space_3.save
  review = Review.new(
    stars: 4,
    content: "Au top",
    )
  review.space = space_3
  review.user = user_renter
  review.save

  review = Review.new(
    stars: 5,
    content: "Au top",
    )
  review.space = space_3
  review.user = user_renter
  review.save

# Space 4
space_4 = Space.new(
  title: "Les 2 au coin",
  localisation: "7 Rue Notre Dame de Bonne Nouvelle, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "50€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_4.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace8_x92laq.png"
space_4.save
    review = Review.new(
      stars: 5,
      content: "Au top",
      )
    review.space = space_4
    review.user = user_renter
    review.save

# Space 5
space_5 = Space.new(
  title: "Anticafé",
  localisation: "79 Rue Quincampoix, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "80€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_5.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558633729/wagon.001_xyypeg.png"
space_5.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_5
    review.user = user_renter
    review.save

# Space 6
space_6 = Space.new(
  title: "Dojocrea",
  localisation: "24 Rue Béranger, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "40€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_6.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace1_gtldhl.png"
space_6.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_6
    review.user = user_renter
    review.save

# Space 7
space_7 = Space.new(
  title: "Cosy Corner",
  localisation: " 8 Rue Saint-Martin, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "80€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_7.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace6_nrl4d0.jpg"
space_7.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_7
    review.user = user_renter
    review.save

# Space 8
space_8 = Space.new(
  title: "Labo de l’Edition",
  localisation: " 2 Rue Saint-Médard, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_8.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace5_gyp83d.jpg"
space_8.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_8
    review.user = user_renter
    review.save

# Space 9
space_9 = Space.new(
  title: "Mozaïk",
  localisation: " 41 Rue de la Chaussée d'Antin, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_9.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace9_obkuig.jpg"
space_9.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_9
    review.user = user_renter
    review.save

# Space 10
space_10 = Space.new(
  title: "CoworkCrèche",
  localisation: "89 Rue du Faubourg Saint-Antoine, Paris",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  price: "80€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_10.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558706128/workspace2_jbffjd.jpg"
space_10.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_10
    review.user = user_renter
    review.save

# Space 11
space_11 = Space.new(
  title: "Lawomatic",
  localisation: "Paris, 5ème",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_11.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707450/images_vtzs2h.jpg"
space_11.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_11
    review.user = user_renter
    review.save

# Space 12
space_12 = Space.new(
  title: "Coworkshop",
  localisation: "20 Rue Jean et Marie Moinon, Paris",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  availabilities: "2019-05-29, 2019-05-30, 2019-05-31, 2019-06-01, 2019-06-02, 2019-06-03, 2019-06-04, 2019-06-05, 2019-06-06, 2019-06-06, 2019-06-07",
  price: "90€",
  space_type: "Partagé",
  capacity: "10 personnes",
  user_id: user.id
  )
space_12.remote_photo_url = "https://res.cloudinary.com/ddzudaqmd/image/upload/v1558707451/Wework3_qcwpzx.jpg"
space_12.save
    review = Review.new(
      stars: 4,
      content: "Au top",
      )
    review.space = space_12
    review.user = user_renter
    review.save

reservation_one = Reservation.new(
period: "Juin",
total_price: 20,
user_id: user.id
)
reservation_one.space = space_1
reservation_one.save

reservation_two = Reservation.new(
period: "Juillet",
total_price: 200,
user_id: user.id
)
reservation_two.space = space_1
reservation_two.save

reservation_three = Reservation.new(
period: "JanVIER",
total_price: 2000,
user_id: user.id
)
reservation_three.space = space_1
reservation_three.save

puts 'Finished'



