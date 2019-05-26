class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews

  mount_uploader :photo, PhotoUploader
  validates :title, :localisation, :availabilities, :price, :space_type, :capacity, presence: true

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
