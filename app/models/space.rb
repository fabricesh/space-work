class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  mount_uploader :photo, PhotoUploader
  # validates :title, :localisation, :availabilities, :price, :space_type, :capacity, presence: true
  # GARDER cette ligne validates sinon formulaire en 3 etapes ne marchera pas
  validates :localisation, :space_type, :capacity, presence: true

  def count_stars
    count = 0
    reviews.each do |review|
      count += review.stars unless review.stars.nil?
    end
    return count
  end
end
