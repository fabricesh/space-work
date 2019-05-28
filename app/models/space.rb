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
  # Search with Algolia
  include AlgoliaSearch

  algoliasearch do
    # all attributes will be sent
  end

  def average_stars
    if self.reviews.present?
      array = self.reviews.map do |review|
        review.stars
      end
      return array.sum.fdiv(array.length)
    else
      return ""
    end
  end
end

