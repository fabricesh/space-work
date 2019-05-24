class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews
  mount_uploader :photo, PhotoUploader
  validates :title, :localisation, :availabilities, :price, :space_type, :capacity, presence: true
end
