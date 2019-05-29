class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  mount_uploader :photo, PhotoUploader
  # validates :title, :localisation, :availabilities, :price, :space_type, :capacity, presence: true
  # GARDER cette ligne validates sinon formulaire en 3 etapes ne marchera pas
  validates :localisation, :space_type, :capacity, presence: true
end
