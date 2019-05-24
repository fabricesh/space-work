class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews
  mount_uploader :photo, PhotoUploader
end
