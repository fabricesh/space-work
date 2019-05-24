class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews

  validates :title, :localisation, :availabilities, :price, :space_type, :capacity, presence: true
end
